// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_payments_due_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPaymentsDueDtoImpl _$$UserPaymentsDueDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPaymentsDueDtoImpl(
      requestId: json['request_id'] as String?,
      code: (json['code'] as num?)?.toInt(),
      errorMessage: json['error_message'] as String?,
      totalpage: (json['totalpage'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PaymentsDueDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserPaymentsDueDtoImplToJson(
        _$UserPaymentsDueDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'totalpage': instance.totalpage,
      'data': instance.data,
    };
