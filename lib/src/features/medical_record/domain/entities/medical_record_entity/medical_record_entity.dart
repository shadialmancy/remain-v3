// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/models.dart';
import '../../../data/model/record_statement_dto/record_statement_data.dart';

part 'medical_record_entity.freezed.dart';
part 'medical_record_entity.g.dart';

@freezed
class RecordStatementEntity with _$RecordStatementEntity {
  factory RecordStatementEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<RecordStatementData>? data,
  }) = _RecordStatementEntity;

  factory RecordStatementEntity.fromJson(Map<String, dynamic> json) =>
      _$RecordStatementEntityFromJson(json);

  factory RecordStatementEntity.generateFakeData({int numOfFakeData = 3}) =>
      RecordStatementEntity(
          data: List.generate(
        numOfFakeData,
        (index) => RecordStatementData(
            doctorArbName: Faker().randomGenerator.numberOfLength(20),
            doctorEngName: Faker().randomGenerator.numberOfLength(20),
            patArbName: Faker().randomGenerator.numberOfLength(20),
            amount: 1000,
            paymethodArb: Faker().randomGenerator.numberOfLength(10),
            paymethodEng: Faker().randomGenerator.numberOfLength(10),
            transNum: 1000,
            patEngName: Faker().randomGenerator.numberOfLength(20),
            reportSpName: Faker().randomGenerator.numberOfLength(20),
            respCenterArbName: Faker().randomGenerator.numberOfLength(20),
            respCenterEngName: Faker().randomGenerator.numberOfLength(20),
            transDate: "1992-05-28T00:00:00"),
      ));
}

extension RecordStatementEntityX on RecordStatementEntity {
  RecordStatementDto toDto() => RecordStatementDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
