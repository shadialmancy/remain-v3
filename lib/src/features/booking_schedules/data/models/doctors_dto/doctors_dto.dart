// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/doctors_entity.dart';
import 'doctor_data.dart';

part 'doctors_dto.freezed.dart';
part 'doctors_dto.g.dart';

@freezed
class DoctorsDto with _$DoctorsDto {
  factory DoctorsDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<DoctorData>? data,
  }) = _DoctorsDto;

  factory DoctorsDto.fromJson(Map<String, dynamic> json) =>
      _$DoctorsDtoFromJson(json);
}

extension DoctorsDtoX on DoctorsDto {
  DoctorsEntity toEntity() => DoctorsEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
