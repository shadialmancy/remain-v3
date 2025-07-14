// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_lab_results_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientLabResultsEntityImpl _$$PatientLabResultsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientLabResultsEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LabResultsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientLabResultsEntityImplToJson(
        _$PatientLabResultsEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
