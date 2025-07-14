import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../booking_schedules/domain/entities/list_of_booking_body/list_of_booking_body.dart';
import '../../data/models/post_booking_payment_body.dart';
import '../../data/repository_impl/payements_repository_impl.dart';
import '../entities/calculate_payment_response_entity.dart';
import '../entities/post_payment_response_entity.dart';
import '../entities/user_payments_due_entity.dart';

part 'payments_repository.g.dart';

@Riverpod(keepAlive: true)
class PaymentsRepository extends _$PaymentsRepository {
  @override
  FutureOr<void> build() {}

  final PaymentsRepositoryRepositoryImpl _paymentsRepositoryRepositoryImpl =
      PaymentsRepositoryRepositoryImpl();

  Future<CalculatePaymentResponseEntity?> calcPaymentWithVat(
      {String? patientID, String? amount}) async {
    try {
      CalculatePaymentResponseEntity? calculatePaymentResponseEntity;
      calculatePaymentResponseEntity = await _paymentsRepositoryRepositoryImpl
          .calcPaymentWithVat(amount: amount, patientID: patientID);
      return calculatePaymentResponseEntity;
    } catch (e, stack) {
      throw CustomError('Failed to calculate payment',
          err: e, stackTrace: stack);
    }
  }

  Future<PostPaymentsResponseEntity> postBookingPayment(
      PostBookingPaymentBody postBookingPaymentBody) async {
    try {
      PostPaymentsResponseEntity postPaymentsResponseEntity;
      postPaymentsResponseEntity = await _paymentsRepositoryRepositoryImpl
          .postBookingPayment(postBookingPaymentBody);
      return postPaymentsResponseEntity;
    } catch (e, stack) {
      throw CustomError('Failed to post booking payment',
          err: e, stackTrace: stack);
    }
  }

  Future<bool> savepaymentWithWebHook(
      {ListOfBookingBody? listOfBookingBody}) async {
    try {
      return await _paymentsRepositoryRepositoryImpl.savepaymentWithWebHook(
          listOfBookingBody: listOfBookingBody);
    } catch (e, stack) {
      throw CustomError('Failed to save booking with web hook',
          err: e, stackTrace: stack);
    }
  }

  Future<UserPaymentsDueEntity> getUserPaymentsDue(
      {int? patientId, int? page}) async {
    try {
      return await _paymentsRepositoryRepositoryImpl.getUserPaymentsDue(
          patientId: patientId, page: page);
    } catch (e, stack) {
      throw CustomError('Failed to get user payments due',
          err: e, stackTrace: stack);
    }
  }
}
