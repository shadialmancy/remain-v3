// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/prescription_entity/patient_prescription_entity.dart';
import 'prescription_info.dart';
part 'patient_prescription_dto.freezed.dart';
part 'patient_prescription_dto.g.dart';

@freezed
class PatientPrescriptionDto with _$PatientPrescriptionDto {
  factory PatientPrescriptionDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<PrescriptionInfo>? data,
  }) = _PatientPrescriptionDto;

  factory PatientPrescriptionDto.fromJson(Map<String, dynamic> json) =>
      _$PatientPrescriptionDtoFromJson(json);
}

extension PatientPrescriptionDtoX on PatientPrescriptionDto {
  PatientPrescriptionEntity toEntity() => PatientPrescriptionEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
