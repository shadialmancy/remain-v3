// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/patient_insurance_dto/insurance_info.dart';
import '../../../data/model/patient_insurance_dto/patient_insurance_dto.dart';

part 'patient_insurance_entity.freezed.dart';
part 'patient_insurance_entity.g.dart';

@freezed
class PatientInsuranceEntity with _$PatientInsuranceEntity {
  factory PatientInsuranceEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<InsuranceInfo>? data,
  }) = _PatientInsuranceEntity;

  factory PatientInsuranceEntity.fromJson(Map<String, dynamic> json) =>
      _$PatientInsuranceEntityFromJson(json);
  factory PatientInsuranceEntity.generateFakeData({int numOfFakeData = 3}) =>
      PatientInsuranceEntity(
          data: List.generate(
        numOfFakeData,
        (index) => InsuranceInfo(
            insuranceCompany: Faker().randomGenerator.numberOfLength(10)),
      ));
}

extension PatientInsuranceEntityX on PatientInsuranceEntity {
  PatientInsuranceDto toDto() => PatientInsuranceDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
