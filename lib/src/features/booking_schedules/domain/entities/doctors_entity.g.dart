// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorsEntityImpl _$$DoctorsEntityImplFromJson(Map<String, dynamic> json) =>
    _$DoctorsEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DoctorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DoctorsEntityImplToJson(_$DoctorsEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
