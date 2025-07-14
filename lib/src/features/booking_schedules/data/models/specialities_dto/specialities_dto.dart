import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/specialities_entity.dart';
import 'specialities_data_item.dart';
part 'specialities_dto.freezed.dart';
part 'specialities_dto.g.dart';

@freezed
class SpecialitiesDto with _$SpecialitiesDto {
  factory SpecialitiesDto({
    String? requestId,
    num? code,
    String? errorMessage,
    List<SpecialitiesDataItem>? data,
  }) = _SpecialitiesDto;

  factory SpecialitiesDto.fromJson(Map<String, dynamic> json) =>
      _$SpecialitiesDtoFromJson(json);
}

extension SpecialitiesDtoX on SpecialitiesDto {
  SpecialitiesEntity toEntity() => SpecialitiesEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
