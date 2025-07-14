// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_with_vat_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentWithVatDataImpl _$$PaymentWithVatDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentWithVatDataImpl(
      total: json['total'] as num?,
      recharging: json['recharging'] as num?,
      vat: json['vat'] as num?,
    );

Map<String, dynamic> _$$PaymentWithVatDataImplToJson(
        _$PaymentWithVatDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'recharging': instance.recharging,
      'vat': instance.vat,
    };
