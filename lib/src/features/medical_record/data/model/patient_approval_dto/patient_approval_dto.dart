// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/patient_approval_entity/patient_approval_entity.dart';
import 'insurance_item.dart';

part 'patient_approval_dto.freezed.dart';
part 'patient_approval_dto.g.dart';

@freezed
class PatientApprovalDto with _$PatientApprovalDto {
  factory PatientApprovalDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<InsuranceItem>? data,
  }) = _PatientApprovalDto;

  factory PatientApprovalDto.fromJson(Map<String, dynamic> json) =>
      _$PatientApprovalDtoFromJson(json);
}

extension PatientApprovalDtoX on PatientApprovalDto {
  PatientApprovalEntity toEntity() => PatientApprovalEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
