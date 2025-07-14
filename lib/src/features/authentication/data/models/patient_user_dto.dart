// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/patient_user_entity.dart';
import 'patient_info.dart';
part 'patient_user_dto.freezed.dart';
part 'patient_user_dto.g.dart';

@freezed
class PatientUserDto with _$PatientUserDto {
  factory PatientUserDto({
    String? requestId,
    int? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    PatientInfo? data,
  }) = _PatientUserDto;

  factory PatientUserDto.fromJson(Map<String, dynamic> json) =>
      _$PatientUserDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$$PatientUserDtoImplToJson(_$PatientUserDtoImpl(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      ));
}

extension PatientUserDtoX on PatientUserDto {
  PatientUserEntity toEntity() => PatientUserEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
