// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/patient_prescription_dto/patient_prescription_dto.dart';
import '../../../data/model/patient_prescription_dto/prescription_info.dart';
part 'patient_prescription_entity.freezed.dart';
part 'patient_prescription_entity.g.dart';

@freezed
class PatientPrescriptionEntity with _$PatientPrescriptionEntity {
  factory PatientPrescriptionEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<PrescriptionInfo>? data,
  }) = _PatientPrescriptionEntity;

  factory PatientPrescriptionEntity.fromJson(Map<String, dynamic> json) =>
      _$PatientPrescriptionEntityFromJson(json);
  factory PatientPrescriptionEntity.generateFakeData({int numOfFakeData = 3}) =>
      PatientPrescriptionEntity(
          data: List.generate(
        numOfFakeData,
        (index) => PrescriptionInfo(
          doctorArbName: Faker().randomGenerator.numberOfLength(10),
          doctorEngName: Faker().randomGenerator.numberOfLength(10),
          reportSpName: Faker().randomGenerator.numberOfLength(10),
          transDate: "1992-05-28T00:00:00",
        ),
      ));
}

extension PatientPrescriptionEntityX on PatientPrescriptionEntity {
  PatientPrescriptionDto toDto() => PatientPrescriptionDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
