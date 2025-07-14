import '../../data/models/patient_info.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/patient_user_dto.dart';
part 'patient_user_entity.freezed.dart';
part 'patient_user_entity.g.dart';

@freezed
class PatientUserEntity extends HiveObject with _$PatientUserEntity {
  PatientUserEntity._();
  factory PatientUserEntity({
    String? requestId,
    int? code,
    String? errorMessage,
    PatientInfo? data,
  }) = _PatientUserEntity;
  factory PatientUserEntity.fromJson(Map<String, dynamic> json) =>
      _$PatientUserEntityFromJson(json);
}

extension PatientUserEntityX on PatientUserEntity {
  PatientUserDto toDto() => PatientUserDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
