// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_payments_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPaymentsResponseDtoImpl _$$PostPaymentsResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PostPaymentsResponseDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PostPaymentsResponseDtoImplToJson(
        _$PostPaymentsResponseDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'message': instance.message,
    };
