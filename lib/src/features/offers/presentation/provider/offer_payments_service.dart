import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../../payments/domain/entities/calculate_payment_response_entity.dart';
import '../../../payments/domain/repository/payments_repository.dart';
// import 'cart_provider.dart';
part 'offer_payments_service.g.dart';

@Riverpod(keepAlive: true)
class OfferPaymentsService extends _$OfferPaymentsService {
  @override
  FutureOr<CalculatePaymentResponseEntity?> build() {
    return getTotalWithVat();
  }

  CalculatePaymentResponseEntity? _totalWithVat;
  CalculatePaymentResponseEntity? getTotalWithVat() => _totalWithVat;

  Future<CalculatePaymentResponseEntity?> calcPaymentWithVat(
      {num totalAmount = 0}) async {
    try {
      state = const AsyncValue.loading();
      int? patientID = ref.read(authUiServiceProvider).value?.id;
      // num? totalAmount =
      //     ref.read(cartServiceProvider.notifier).sumTotalAmount();
      if (patientID == null) return null;
      _totalWithVat = await ref
          .read(paymentsRepositoryProvider.notifier)
          .calcPaymentWithVat(
            patientID: patientID.toString(),
            amount: totalAmount.toString(),
          );
      state = AsyncData(_totalWithVat);
      return _totalWithVat;
    } catch (e, stack) {
      state =
          AsyncError(CustomError('Failed to calculate payment', err: e), stack);
      throw CustomError('Failed to calculate payment',
          err: e, stackTrace: stack);
    }
  }

  void clearTotalWithVat() {
    _totalWithVat = null;
  }
}
