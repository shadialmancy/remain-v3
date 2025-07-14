// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InsuranceImpl _$$InsuranceImplFromJson(Map<String, dynamic> json) =>
    _$InsuranceImpl(
      payerId: json['payer_id'] as String?,
      planId: json['plan_id'] as String?,
      cardNumber: json['card_number'] as String?,
      expiryDate: json['expiry_date'] as String?,
    );

Map<String, dynamic> _$$InsuranceImplToJson(_$InsuranceImpl instance) =>
    <String, dynamic>{
      'payer_id': instance.payerId,
      'plan_id': instance.planId,
      'card_number': instance.cardNumber,
      'expiry_date': instance.expiryDate,
    };
