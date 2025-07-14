// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialities_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialitiesDtoImpl _$$SpecialitiesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialitiesDtoImpl(
      requestId: json['requestId'] as String?,
      code: json['code'] as num?,
      errorMessage: json['errorMessage'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SpecialitiesDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpecialitiesDtoImplToJson(
        _$SpecialitiesDtoImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'code': instance.code,
      'errorMessage': instance.errorMessage,
      'data': instance.data,
    };
