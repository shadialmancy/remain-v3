// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sick_leave_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SickLeaveEntityImpl _$$SickLeaveEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SickLeaveEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SickLeaveData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SickLeaveEntityImplToJson(
        _$SickLeaveEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
