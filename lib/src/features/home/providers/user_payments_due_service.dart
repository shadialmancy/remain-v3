import 'package:remain/src/features/payments/domain/entities/user_payments_due_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../authentication/presentation/provider/auth_ui_service.dart';
import '../../payments/data/models/user_payments_due_dto/payments_due_datum.dart';
import '../../payments/domain/repository/payments_repository.dart';

part 'user_payments_due_service.g.dart';

@Riverpod(keepAlive: true)
class UserPaymentsDueService extends _$UserPaymentsDueService {
  @override
  FutureOr<UserPaymentsDueEntity?> build() async {
    final patientInfo = await ref.read(authUiServiceProvider.future);
    state = const AsyncValue.loading();
    if (patientInfo == null) {
      state = const AsyncValue.data(null);
      return null;
    }
    final paymetsDue = await ref
        .watch(paymentsRepositoryProvider.notifier)
        .getUserPaymentsDue(patientId: patientInfo.id, page: 1);
    state = AsyncValue.data(paymetsDue);
    return paymetsDue;
  }

  PaymentsDueDatum? _selectedPaymentDue;
  PaymentsDueDatum? getSelectedPaymentDue() => _selectedPaymentDue;
  void setSelectedPaymentDue(PaymentsDueDatum? paymentDue) {
    _selectedPaymentDue = paymentDue;
    state = AsyncValue.data(state.value);
  }

  Future<void> refreshUserPaymentsDue() async {
    try {
      state = const AsyncValue.loading();
      final patientInfo = await ref.read(authUiServiceProvider.future);
      if (patientInfo == null) {
        state = const AsyncValue.data(null);
        return;
      }
      final paymetsDue = await ref
          .watch(paymentsRepositoryProvider.notifier)
          .getUserPaymentsDue(patientId: patientInfo.id, page: 1);
      state = AsyncValue.data(paymetsDue);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
