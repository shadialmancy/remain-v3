// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_record_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordStatementEntityImpl _$$RecordStatementEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordStatementEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RecordStatementData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecordStatementEntityImplToJson(
        _$RecordStatementEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
