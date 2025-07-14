// ignore_for_file: avoid_public_notifier_properties

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/map_location_entity.dart';
import '../../domain/repositories/map_repository.dart';

part 'map_location_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [
  MapRepository,
])
class MapLocationService extends _$MapLocationService {
  @override
  FutureOr<MapLocationEntity?> build() {
    return getMapLocation();
  }

  Future<MapLocationEntity?> getMapLocation() async {
    try {
      return await ref.read(mapRepositoryProvider.notifier).getMapLocation();
    } catch (e, stack) {
      throw CustomError('Failed to get map location',
          err: e, stackTrace: stack);
    }
  }
}
