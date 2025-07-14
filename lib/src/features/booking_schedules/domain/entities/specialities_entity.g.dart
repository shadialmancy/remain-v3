// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialities_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialitiesEntityImpl _$$SpecialitiesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialitiesEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SpecialitiesDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpecialitiesEntityImplToJson(
        _$SpecialitiesEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
