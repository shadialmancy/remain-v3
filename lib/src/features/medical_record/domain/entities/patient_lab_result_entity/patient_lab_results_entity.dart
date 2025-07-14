// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/model/models.dart';
import '../../../data/model/patient_lab_results_dto/lab_results_data.dart';
import '../../../data/model/patient_lab_results_dto/trans_dtl.dart';
part 'patient_lab_results_entity.freezed.dart';
part 'patient_lab_results_entity.g.dart';

@freezed
class PatientLabResultsEntity with _$PatientLabResultsEntity {
  factory PatientLabResultsEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<LabResultsData>? data,
  }) = _PatientLabResultsEntity;

  factory PatientLabResultsEntity.fromJson(Map<String, dynamic> json) =>
      _$PatientLabResultsEntityFromJson(json);

  factory PatientLabResultsEntity.generateFakeData({int numOfFakeData = 3}) =>
      PatientLabResultsEntity(
          data: List.generate(
        numOfFakeData,
        (index) => LabResultsData(
            doctorArbName: Faker().randomGenerator.numberOfLength(10),
            doctorEngName: Faker().randomGenerator.numberOfLength(10),
            reportSpName: Faker().randomGenerator.numberOfLength(10),
            respCenterArbName: Faker().randomGenerator.numberOfLength(10),
            respCenterEngName: Faker().randomGenerator.numberOfLength(10),
            transDate: "1992-05-28T00:00:00",
            transDtl: List.generate(
              2,
              (index) => TransDtl(
                  serviceArbName: Faker().randomGenerator.numberOfLength(10),
                  serviceEngName: Faker().randomGenerator.numberOfLength(10)),
            )),
      ));
}

extension PatientLabResultsEntityX on PatientLabResultsEntity {
  PatientLabResultsDto toDto() => PatientLabResultsDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
