import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/map_location_entity.dart';
import 'location_data.dart';

part 'map_location_dto.freezed.dart';
part 'map_location_dto.g.dart';

@freezed
class MapLocationDto with _$MapLocationDto {
  factory MapLocationDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    num? totalpage,
    List<LocationData>? data,
  }) = _MapLocationDto;

  factory MapLocationDto.fromJson(Map<String, dynamic> json) =>
      _$MapLocationDtoFromJson(json);
}

extension MapLocationDtoX on MapLocationDto {
  MapLocationEntity toEntity() => MapLocationEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
