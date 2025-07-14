// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_approval_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientApprovalEnitiyImpl _$$PatientApprovalEnitiyImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientApprovalEnitiyImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InsuranceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientApprovalEnitiyImplToJson(
        _$PatientApprovalEnitiyImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
