import 'package:remain/src/features/maps/data/models/map_location_dto/map_location_dto.dart';

import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/map_location_entity.dart';
import '../datasource/map_datasource.dart';

abstract class BaseMapRepository {
  Future<void> getMapLocation();
}

class MapRepositoryImpl implements BaseMapRepository {
  final MapSourceImpl dataSource = MapSourceImpl();

  @override
  Future<MapLocationEntity> getMapLocation() async {
    try {
      return await dataSource.getMapLocation().then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get map location',
          err: e, stackTrace: stack);
    }
  }
}
