import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/models.dart';

abstract class OfferSource {
  Future<OffersDto> getAllOffers(
      {required String specialtieID, required String locationsID});
}

class OfferSourceImpl implements OfferSource {
  @override
  Future<OffersDto> getAllOffers(
      {required String specialtieID, required String locationsID}) async {
    var queryParameter = {
      AppStrings.specialtieID: specialtieID, //21,
      AppStrings.locationsID: locationsID //6,
    };
    logger.d('queryParameter: $queryParameter');
    try {
      final response = await RemainDioClient()
          .dio
          .get(AppConstants.getAllOffersUrl, queryParameters: queryParameter);

      if (response.statusCode == 200) {
        return OffersDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage ?? 'Error in getting offers');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
