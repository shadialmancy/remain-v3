// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sick_leave_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SickLeaveDtoImpl _$$SickLeaveDtoImplFromJson(Map<String, dynamic> json) =>
    _$SickLeaveDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SickLeaveData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SickLeaveDtoImplToJson(_$SickLeaveDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
