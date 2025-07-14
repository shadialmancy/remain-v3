// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorsDtoImpl _$$DoctorsDtoImplFromJson(Map<String, dynamic> json) =>
    _$DoctorsDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DoctorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DoctorsDtoImplToJson(_$DoctorsDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
