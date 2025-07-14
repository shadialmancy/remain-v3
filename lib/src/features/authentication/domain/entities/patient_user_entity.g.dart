// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientUserEntityImpl _$$PatientUserEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientUserEntityImpl(
      requestId: json['requestId'] as String?,
      code: (json['code'] as num?)?.toInt(),
      errorMessage: json['errorMessage'] as String?,
      data: json['data'] == null
          ? null
          : PatientInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatientUserEntityImplToJson(
        _$PatientUserEntityImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'code': instance.code,
      'errorMessage': instance.errorMessage,
      'data': instance.data,
    };
