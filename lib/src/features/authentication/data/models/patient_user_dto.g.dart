// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientUserDtoImpl _$$PatientUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$PatientUserDtoImpl(
      requestId: json['requestId'] as String?,
      code: (json['code'] as num?)?.toInt(),
      errorMessage: json['error_message'] as String?,
      data: json['data'] == null
          ? null
          : PatientInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatientUserDtoImplToJson(
        _$PatientUserDtoImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
