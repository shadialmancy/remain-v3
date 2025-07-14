// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_payment_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculatePaymentResponseEntityImpl
    _$$CalculatePaymentResponseEntityImplFromJson(Map<String, dynamic> json) =>
        _$CalculatePaymentResponseEntityImpl(
          requestId: json['request_id'] as String?,
          code: json['code'] as num?,
          errorMessage: json['error_message'] as String?,
          data: json['data'] == null
              ? null
              : PaymentWithVatData.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CalculatePaymentResponseEntityImplToJson(
        _$CalculatePaymentResponseEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
