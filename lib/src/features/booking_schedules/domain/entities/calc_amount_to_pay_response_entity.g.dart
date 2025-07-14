// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_amount_to_pay_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalcAmountToPayResponseEntityImpl
    _$$CalcAmountToPayResponseEntityImplFromJson(Map<String, dynamic> json) =>
        _$CalcAmountToPayResponseEntityImpl(
          requestId: json['request_id'] as String?,
          code: json['code'] as num?,
          errorMessage: json['error_message'] as String?,
          data: json['data'] == null
              ? null
              : AmountData.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CalcAmountToPayResponseEntityImplToJson(
        _$CalcAmountToPayResponseEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
