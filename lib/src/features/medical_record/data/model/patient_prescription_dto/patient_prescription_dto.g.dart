// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_prescription_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientPrescriptionDtoImpl _$$PatientPrescriptionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientPrescriptionDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PrescriptionInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientPrescriptionDtoImplToJson(
        _$PatientPrescriptionDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
