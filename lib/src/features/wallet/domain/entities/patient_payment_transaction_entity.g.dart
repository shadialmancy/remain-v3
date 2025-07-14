// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_payment_transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientPaymentTransactionsEntityImpl
    _$$PatientPaymentTransactionsEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$PatientPaymentTransactionsEntityImpl(
          requestId: json['request_id'] as String?,
          code: json['code'] as num?,
          errorMessage: json['error_message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  PatientTransactionsData.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PatientPaymentTransactionsEntityImplToJson(
        _$PatientPaymentTransactionsEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
