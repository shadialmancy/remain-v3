// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/specialities_dto/specialities_data_item.dart';
import '../../data/models/specialities_dto/specialities_dto.dart';
part 'specialities_entity.freezed.dart';
part 'specialities_entity.g.dart';

@freezed
class SpecialitiesEntity with _$SpecialitiesEntity {
  factory SpecialitiesEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<SpecialitiesDataItem>? data,
  }) = _SpecialitiesEntity;

  factory SpecialitiesEntity.fromJson(Map<String, dynamic> json) =>
      _$SpecialitiesEntityFromJson(json);
  factory SpecialitiesEntity.generateFakeData({int numOfGenerate = 3}) =>
      SpecialitiesEntity(
          data: List.generate(
        numOfGenerate,
        (index) => SpecialitiesDataItem(
          arbName: Faker().randomGenerator.numberOfLength(7),
          engName: Faker().randomGenerator.numberOfLength(7),
        ),
      ));
}

extension SpecialitiesEntityX on SpecialitiesEntity {
  SpecialitiesDto toDto() => SpecialitiesDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
