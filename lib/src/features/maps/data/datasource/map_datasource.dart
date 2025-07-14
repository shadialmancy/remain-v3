import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/map_location_dto/map_location_dto.dart';

abstract class MapSource {
  Future<MapLocationDto> getMapLocation();
}

class MapSourceImpl implements MapSource {
  @override
  Future<MapLocationDto> getMapLocation() async {
    try {
      final response = await RemainDioClient().dio.get(
            AppConstants.getMapLocationUrl,
          );
      return MapLocationDto.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
