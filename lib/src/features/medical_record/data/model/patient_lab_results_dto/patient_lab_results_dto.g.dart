// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_lab_results_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientLabResultsDtoImpl _$$PatientLabResultsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientLabResultsDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LabResultsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientLabResultsDtoImplToJson(
        _$PatientLabResultsDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
