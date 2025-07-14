// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_time_slots_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableTimeSlotsEntityImpl _$$AvailableTimeSlotsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableTimeSlotsEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AvailableTimeSlotsEntityImplToJson(
        _$AvailableTimeSlotsEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
