// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_location_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapLocationEntityImpl _$$MapLocationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MapLocationEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      totalpage: json['totalpage'] as num?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LocationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MapLocationEntityImplToJson(
        _$MapLocationEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'totalpage': instance.totalpage,
      'data': instance.data,
    };
