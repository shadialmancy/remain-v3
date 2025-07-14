// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_insurance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientInsuranceDtoImpl _$$PatientInsuranceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientInsuranceDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InsuranceInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientInsuranceDtoImplToJson(
        _$PatientInsuranceDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
