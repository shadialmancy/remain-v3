// ignore_for_file: provider_dependencies

import 'package:remain/src/core/helpers/session_manager.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/booking_details_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../data/models/post_booking_payment_body.dart';
import '../../domain/entities/calculate_payment_response_entity.dart';
import '../../domain/entities/post_payment_response_entity.dart';
import '../../domain/repository/payments_repository.dart';

part 'payments_service.g.dart';

@Riverpod(
    keepAlive: true,
    dependencies: [BookingDetailsService, PaymentsRepository, AuthUiService])
class PaymentService extends _$PaymentService {
  @override
  FutureOr<void> build() {
    _paymentMethod = null;
  }

  CalculatePaymentResponseEntity? _calculatePaymentResponseEntity;
  CalculatePaymentResponseEntity? getCalculatePaymentResponseEntity() =>
      _calculatePaymentResponseEntity;
  Future<CalculatePaymentResponseEntity?> calcPaymentWithVat(
      num? amount) async {
    try {
      logger.d('Calculating Payment with VAT');

      // num? amount =
      //     ref.read(bookingDetailsServiceProvider.notifier).getAmountToPay();
      logger.d('Amount: $amount');
      final patientInfo = await ref.watch(authUiServiceProvider.future);
      if (amount == 0 || patientInfo?.id == null) return null;
      _calculatePaymentResponseEntity = await ref
          .read(paymentsRepositoryProvider.notifier)
          .calcPaymentWithVat(
            patientID: patientInfo?.id.toString(),
            amount: amount.toString(),
          );
      return _calculatePaymentResponseEntity;
    } catch (e, stack) {
      throw CustomError('Failed to calculate payment',
          err: e, stackTrace: stack);
    }
  }

  int? _paymentMethod;
  void setPaymentMethod(int? paymentMethod) {
    _paymentMethod = paymentMethod;
  }

  int? getPaymentMethod() {
    return _paymentMethod;
  }

  PostBookingPaymentBody? _postBookingPaymentBody;
  PostBookingPaymentBody? getPostBookingPaymentBody() =>
      _postBookingPaymentBody;

  String? _bookingId;
  String? getBookingId() => _bookingId;
  void setBookingId(String bookingId) {
    _bookingId = bookingId;
  }

  bool _paymentStatus = false;
  bool getPaymentStatus() => _paymentStatus;
  void setPaymentStatus(bool status) {
    _paymentStatus = status;
    logger.w('Setted Payment Status: $_paymentStatus');
  }

  String? _paymentDescription;
  String? getPaymentDescription() {
    return _paymentDescription;
  }

  void setPaymentDescription(String? paymentDescription) {
    _paymentDescription = paymentDescription;
  }

  String? _paymentRepId;
  void setPaymentRepId(String paymentRepId) {
    _paymentRepId = paymentRepId;
  }

  String? getPaymentRepId() {
    return _paymentRepId;
  }

  Future<bool> checkIfWalletBalanceIsEnough(num walletBalance) async {
    // await calcPaymentWithVat();
    num totalAmount = _calculatePaymentResponseEntity?.data?.total ?? 0.0;
    logger.d('Wallet Balance: $walletBalance, Total Amount: $totalAmount');
    return walletBalance >= totalAmount;
  }

  Future<void> setPostBookingPaymentBody() async {
    String totalAmount = '';
    String vatAmount = '';
    if (_calculatePaymentResponseEntity == null) {
      // await calcPaymentWithVat();
    }
    if (_calculatePaymentResponseEntity != null) {
      totalAmount =
          _calculatePaymentResponseEntity?.data?.total?.toString() ?? '';
      vatAmount = _calculatePaymentResponseEntity?.data?.vat?.toString() ?? '';
    }
    final patientData = await ref.watch(authUiServiceProvider.future);
    String patientId = patientData?.id.toString() ?? '';
    bool isInsurance = patientData?.isInsurance ?? false;
    num locationId = await sessionManager.getChosenMedicalCenter();
    _postBookingPaymentBody = PostBookingPaymentBody(
      amount: totalAmount,
      bookingId: _bookingId ?? '',
      isCash: !isInsurance,
      patientId: patientId,
      status: _paymentStatus,
      vatAmount: vatAmount,
      paymentRepId: _paymentRepId ?? '',
      programId: '',
      programVerId: '',
      comment: '',
      locationID: locationId.toString(),
    );
    logger.d('PostBookingPaymentBody: $_postBookingPaymentBody');
  }

  Future<bool> postBookingPayment() async {
    try {
      await setPostBookingPaymentBody();
      PostPaymentsResponseEntity? postPaymentsResponseEntity;
      if (_postBookingPaymentBody != null) {
        postPaymentsResponseEntity = await ref
            .read(paymentsRepositoryProvider.notifier)
            .postBookingPayment(_postBookingPaymentBody!);
      }
      return postPaymentsResponseEntity?.code == 200;
    } catch (e, stack) {
      throw CustomError('Failed to post booking payment',
          err: e, stackTrace: stack);
    }
  }

  void reset() {
    _calculatePaymentResponseEntity = null;
    _postBookingPaymentBody = null;
    _bookingId = null;
    _paymentStatus = false;
    _paymentRepId = null;
    _paymentMethod = null;
    _paymentDescription = null;
  }
}
