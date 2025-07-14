import 'package:dio/dio.dart';

import '../../../../tamara_service.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/models.dart';

abstract class TamaraSource {
  Future<TamaraCheckoutResponseDto> createCheckoutSession(
      TamaraPayment? payment);
}

class TamaraSourceImpl implements TamaraSource {
  @override
  Future<TamaraCheckoutResponseDto> createCheckoutSession(
      TamaraPayment? payment) async {
    try {
      final response =
          await Dio().post(AppConstants.tamaraCreateCheckoutSessionUrl,
              options: Options(
                headers: {
                  'authorization': 'Bearer ${TamaraService.tamaraApiKey}',
                },
                followRedirects: true,
                validateStatus: (status) {
                  return status! <= 500;
                },
              ),
              data: payment?.toJson());
      if (response.statusCode == 200) {
        return TamaraCheckoutResponseDto.fromJson(response.data);
      } else {
        throw CustomError(
            response.statusMessage ?? 'Error in create checkout session');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
