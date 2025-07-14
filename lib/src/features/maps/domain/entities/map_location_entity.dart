import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/map_location_dto/location_data.dart';
import '../../data/models/map_location_dto/map_location_dto.dart';

part 'map_location_entity.freezed.dart';
part 'map_location_entity.g.dart';

@freezed
class MapLocationEntity with _$MapLocationEntity {
  factory MapLocationEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    num? totalpage,
    List<LocationData>? data,
  }) = _MapLocationEntity;

  factory MapLocationEntity.fromJson(Map<String, dynamic> json) =>
      _$MapLocationEntityFromJson(json);

  factory MapLocationEntity.generateFakeData({int numOfFakeData = 3}) =>
      MapLocationEntity(
        data: List.generate(
          numOfFakeData,
          (index) => LocationData(
            locationAr: Faker().randomGenerator.numberOfLength(20),
            locationEn: Faker().randomGenerator.numberOfLength(20),
            phoneNum: Faker().randomGenerator.numberOfLength(20),
            locationAddress: Faker().randomGenerator.numberOfLength(20),
          ),
        ),
      );
}

extension MapLocationEntityX on MapLocationEntity {
  MapLocationDto toDto() => MapLocationDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
