// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/entities.dart';
import '../models.dart';
part 'sick_leave_dto.freezed.dart';
part 'sick_leave_dto.g.dart';

@freezed
class SickLeaveDto with _$SickLeaveDto {
  factory SickLeaveDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<SickLeaveData>? data,
  }) = _SickLeaveDto;

  factory SickLeaveDto.fromJson(Map<String, dynamic> json) =>
      _$SickLeaveDtoFromJson(json);
}

extension SickLeaveDtoX on SickLeaveDto {
  SickLeaveEntity toEntity() {
    return SickLeaveEntity(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      data: data,
    );
  }
}
