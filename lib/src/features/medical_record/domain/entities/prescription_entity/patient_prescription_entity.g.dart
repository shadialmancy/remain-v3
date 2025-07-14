// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_prescription_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientPrescriptionEntityImpl _$$PatientPrescriptionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientPrescriptionEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PrescriptionInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientPrescriptionEntityImplToJson(
        _$PatientPrescriptionEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
