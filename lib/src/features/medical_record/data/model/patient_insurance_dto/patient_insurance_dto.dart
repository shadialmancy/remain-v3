// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/patient_insurance_entity/patient_insurance_entity.dart';
import 'insurance_info.dart';

part 'patient_insurance_dto.freezed.dart';
part 'patient_insurance_dto.g.dart';

@freezed
class PatientInsuranceDto with _$PatientInsuranceDto {
  factory PatientInsuranceDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<InsuranceInfo>? data,
  }) = _PatientInsuranceDto;

  factory PatientInsuranceDto.fromJson(Map<String, dynamic> json) =>
      _$PatientInsuranceDtoFromJson(json);
}

extension PatientInsuranceDtoX on PatientInsuranceDto {
  PatientInsuranceEntity toEntity() => PatientInsuranceEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
