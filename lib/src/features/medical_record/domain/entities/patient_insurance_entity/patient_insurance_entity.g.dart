// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_insurance_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientInsuranceEntityImpl _$$PatientInsuranceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientInsuranceEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InsuranceInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientInsuranceEntityImplToJson(
        _$PatientInsuranceEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
