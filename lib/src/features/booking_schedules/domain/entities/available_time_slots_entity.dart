// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/availability_time_slots_dto/available_time_slots_dto.dart';
import '../../data/models/availability_time_slots_dto/data.dart';
part 'available_time_slots_entity.freezed.dart';
part 'available_time_slots_entity.g.dart';

@freezed
class AvailableTimeSlotsEntity with _$AvailableTimeSlotsEntity {
  const AvailableTimeSlotsEntity._();
  factory AvailableTimeSlotsEntity({
    @JsonKey(name: 'request_id') String? requestId,
    @JsonKey(name: 'code') num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    @JsonKey(name: 'data') Data? data,
  }) = _AvailableTimeSlotsEntity;
  factory AvailableTimeSlotsEntity.fromJson(Map<String, dynamic> json) =>
      _$AvailableTimeSlotsEntityFromJson(json);
}

extension AvailableTimeSlotsEntityX on AvailableTimeSlotsEntity {
  AvailableTimeSlotsDto toDto() => AvailableTimeSlotsDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
