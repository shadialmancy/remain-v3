// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_services_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeServicesEntityImpl _$$HomeServicesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeServicesEntityImpl(
      requestId: json['request_id'] as String?,
      code: (json['code'] as num?)?.toInt(),
      errorMessage: json['error_message'] as String?,
      totalpage: (json['totalpage'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ServicesDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeServicesEntityImplToJson(
        _$HomeServicesEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'totalpage': instance.totalpage,
      'data': instance.data,
    };
