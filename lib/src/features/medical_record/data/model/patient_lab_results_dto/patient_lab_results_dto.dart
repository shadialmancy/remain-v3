// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';
import 'lab_results_data.dart';

part 'patient_lab_results_dto.freezed.dart';
part 'patient_lab_results_dto.g.dart';

@freezed
class PatientLabResultsDto with _$PatientLabResultsDto {
  factory PatientLabResultsDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<LabResultsData>? data,
  }) = _PatientLabResultsDto;

  factory PatientLabResultsDto.fromJson(Map<String, dynamic> json) =>
      _$PatientLabResultsDtoFromJson(json);
}

extension PatientLabResultsDtoX on PatientLabResultsDto {
  PatientLabResultsEntity toEntity() => PatientLabResultsEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
