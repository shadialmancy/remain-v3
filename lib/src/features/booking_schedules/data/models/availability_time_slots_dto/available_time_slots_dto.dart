// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/available_time_slots_entity.dart';
import 'data.dart';

part 'available_time_slots_dto.freezed.dart';
part 'available_time_slots_dto.g.dart';

@freezed
class AvailableTimeSlotsDto with _$AvailableTimeSlotsDto {
  factory AvailableTimeSlotsDto({
    @JsonKey(name: 'request_id') String? requestId,
    @JsonKey(name: 'code') num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    @JsonKey(name: 'data') Data? data,
  }) = _AvailableTimeSlotsDto;

  factory AvailableTimeSlotsDto.fromJson(Map<String, dynamic> json) =>
      _$AvailableTimeSlotsDtoFromJson(json);
}

extension AvailableTimeSlotsDtoX on AvailableTimeSlotsDto {
  AvailableTimeSlotsEntity toEntity() => AvailableTimeSlotsEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
