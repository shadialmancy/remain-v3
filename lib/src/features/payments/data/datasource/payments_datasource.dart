import 'package:dio/dio.dart';
import 'package:remain/src/features/payments/data/models/user_payments_due_dto/user_payments_due_dto.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../booking_schedules/domain/entities/list_of_booking_body/list_of_booking_body.dart';
import '../models/calculate_payment_response_dto.dart';
import '../models/post_booking_payment_body.dart';
import '../models/post_payments_response_dto.dart';

abstract class PaymentSource {
  Future<CalculatePaymentResponseDto> calcPaymentWithVat(
      {String? patientID, String? amount});

  Future<PostPaymentsResponseDto> postBookingPayment(
      PostBookingPaymentBody postBookingPaymentBody);

  Future<bool> savepaymentWithWebHook({ListOfBookingBody? listOfBookingBody});

  Future<UserPaymentsDueDto> getUserPaymentsDue({int? patientId, int? page});
}

class PaymentSourceImpl implements PaymentSource {
  @override
  Future<CalculatePaymentResponseDto> calcPaymentWithVat(
      {String? patientID, String? amount}) async {
    Map<String, String> queryParams = {
      AppStrings.patientId: patientID ?? '',
      AppStrings.amount: amount ?? '',
    };
    try {
      final response = await BaseDioClient().dio.get(
            AppConstants.getCalcPaymentUrl,
            queryParameters: queryParams,
          );
      if (response.statusCode == 200) {
        return CalculatePaymentResponseDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage.toString());
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<PostPaymentsResponseDto> postBookingPayment(
      PostBookingPaymentBody postBookingPaymentBody) async {
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.postPaymentUrl,
            data: postBookingPaymentBody.toJson(),
          );
      if (response.statusCode == 200) {
        return PostPaymentsResponseDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage.toString());
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<bool> savepaymentWithWebHook(
      {ListOfBookingBody? listOfBookingBody}) async {
    try {
      var body = {
        'Data': listOfBookingBody?.data?.toJson(),
        'ProgramData':
            listOfBookingBody?.programData?.map((e) => e.toJson()).toList(),
      };

      logger.i('Booking Body: $body');
      final response = await RemainWebHook().dio.post(
            '/PostPayment',
            data: body,
            options: Options(
              headers: {
                'Authorization': 'bWFhemphYmphYjg3OkRzbWNCb29raW5nQDIwMjA=',
              },
            ),
          );
      return response.statusCode == 200;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<UserPaymentsDueDto> getUserPaymentsDue(
      {int? patientId, int? page}) async {
    Map<String, dynamic> queryParams = {
      'page': page ?? 1,
    };
    try {
      final response = await RemainDioClient().dio.get(
            '${AppConstants.getPaymentsDue}/$patientId',
            queryParameters: queryParams,
          );
      if (response.statusCode == 200) {
        return UserPaymentsDueDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage.toString());
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
