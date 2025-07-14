// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_statement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordStatementDtoImpl _$$RecordStatementDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordStatementDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RecordStatementData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecordStatementDtoImplToJson(
        _$RecordStatementDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
