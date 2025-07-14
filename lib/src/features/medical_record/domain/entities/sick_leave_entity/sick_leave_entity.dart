// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/model/models.dart';
part 'sick_leave_entity.freezed.dart';
part 'sick_leave_entity.g.dart';

@freezed
class SickLeaveEntity with _$SickLeaveEntity {
  factory SickLeaveEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<SickLeaveData>? data,
  }) = _SickLeaveEntity;

  factory SickLeaveEntity.fromJson(Map<String, dynamic> json) =>
      _$SickLeaveEntityFromJson(json);
  factory SickLeaveEntity.generateFakeData({int numOfFakeData = 3}) =>
      SickLeaveEntity(
          data: List.generate(
        numOfFakeData,
        (index) => SickLeaveData(
            patientMrn: Faker().randomGenerator.numberOfLength(10),
            regDate: '2024-05-05T00:00:00',
            spName: Faker().randomGenerator.numberOfLength(10),
            trnCodeCol: Faker().randomGenerator.numberOfLength(10)),
      ));
}

extension SickLeaveEntityX on SickLeaveEntity {
  SickLeaveDto toDto() {
    return SickLeaveDto(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      data: data,
    );
  }
}
