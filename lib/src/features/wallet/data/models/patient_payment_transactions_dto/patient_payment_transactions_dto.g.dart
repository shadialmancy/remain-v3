// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_payment_transactions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientPaymentTransactionsDtoImpl
    _$$PatientPaymentTransactionsDtoImplFromJson(Map<String, dynamic> json) =>
        _$PatientPaymentTransactionsDtoImpl(
          requestId: json['request_id'] as String?,
          code: json['code'] as num?,
          errorMessage: json['error_message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  PatientTransactionsData.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PatientPaymentTransactionsDtoImplToJson(
        _$PatientPaymentTransactionsDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
