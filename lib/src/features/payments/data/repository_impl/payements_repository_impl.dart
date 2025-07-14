import 'package:remain/src/features/payments/data/models/calculate_payment_response_dto.dart';
import 'package:remain/src/features/payments/data/models/post_payments_response_dto.dart';
import 'package:remain/src/features/payments/data/models/user_payments_due_dto/user_payments_due_dto.dart';
import 'package:remain/src/features/payments/domain/entities/user_payments_due_entity.dart';

import '../../../../core/errors/custom_error.dart';
import '../../../booking_schedules/domain/entities/list_of_booking_body/list_of_booking_body.dart';
import '../../domain/entities/calculate_payment_response_entity.dart';
import '../../domain/entities/post_payment_response_entity.dart';
import '../datasource/payments_datasource.dart';
import '../models/post_booking_payment_body.dart';

abstract class PaymentsRepository {
  Future<CalculatePaymentResponseEntity> calcPaymentWithVat(
      {String? patientID, String? amount});
  Future<PostPaymentsResponseEntity> postBookingPayment(
      PostBookingPaymentBody postBookingPaymentBody);
  Future<bool> savepaymentWithWebHook({ListOfBookingBody? listOfBookingBody});
  Future<UserPaymentsDueEntity> getUserPaymentsDue({int? patientId, int? page});
}

class PaymentsRepositoryRepositoryImpl implements PaymentsRepository {
  PaymentSourceImpl dataSource = PaymentSourceImpl();

  @override
  Future<CalculatePaymentResponseEntity> calcPaymentWithVat(
      {String? patientID, String? amount}) async {
    try {
      return await dataSource
          .calcPaymentWithVat(amount: amount, patientID: patientID)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to calculate payment',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<PostPaymentsResponseEntity> postBookingPayment(
      PostBookingPaymentBody postBookingPaymentBody) async {
    try {
      return await dataSource
          .postBookingPayment(postBookingPaymentBody)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to post booking payment',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<bool> savepaymentWithWebHook(
      {ListOfBookingBody? listOfBookingBody}) async {
    try {
      return await dataSource.savepaymentWithWebHook(
          listOfBookingBody: listOfBookingBody);
    } catch (e, stack) {
      throw CustomError('Failed to save booking with web hook',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<UserPaymentsDueEntity> getUserPaymentsDue(
      {int? patientId, int? page}) async {
    try {
      return await dataSource
          .getUserPaymentsDue(patientId: patientId, page: page)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get user payments due',
          err: e, stackTrace: stack);
    }
  }
}
