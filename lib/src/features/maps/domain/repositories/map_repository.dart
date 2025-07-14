import 'package:remain/src/features/maps/data/repositories_impl/map_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../entities/map_location_entity.dart';
part 'map_repository.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class MapRepository extends _$MapRepository {
  final MapRepositoryImpl _mapRepoImpl = MapRepositoryImpl();
  @override
  FutureOr<MapLocationEntity?> build() async {
    return null;
  }

  Future<MapLocationEntity?> getMapLocation() async {
    try {
      return await _mapRepoImpl.getMapLocation();
    } catch (e, stack) {
      throw CustomError('Failed to login', err: e, stackTrace: stack);
    }
  }
}
