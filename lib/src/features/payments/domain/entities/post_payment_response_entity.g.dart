// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_payment_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPaymentsResponseEntityImpl _$$PostPaymentsResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PostPaymentsResponseEntityImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PostPaymentsResponseEntityImplToJson(
        _$PostPaymentsResponseEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'message': instance.message,
    };
