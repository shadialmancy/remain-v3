// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_time_slots_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableTimeSlotsDtoImpl _$$AvailableTimeSlotsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableTimeSlotsDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AvailableTimeSlotsDtoImplToJson(
        _$AvailableTimeSlotsDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
