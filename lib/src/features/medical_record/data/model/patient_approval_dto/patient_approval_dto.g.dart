// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_approval_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientApprovalDtoImpl _$$PatientApprovalDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientApprovalDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InsuranceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientApprovalDtoImplToJson(
        _$PatientApprovalDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
