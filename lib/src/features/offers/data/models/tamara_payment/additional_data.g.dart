// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdditionalDataImpl _$$AdditionalDataImplFromJson(Map<String, dynamic> json) =>
    _$AdditionalDataImpl(
      deliveryMethod: json['delivery_method'] as String?,
      pickupStore: json['pickup_store'] as String?,
      storeCode: json['store_code'] as String?,
      vendorAmount: json['vendor_amount'] as num?,
      merchantSettlementAmount: json['merchant_settlement_amount'] as num?,
      vendorReferenceCode: json['vendor_reference_code'] as String?,
    );

Map<String, dynamic> _$$AdditionalDataImplToJson(
        _$AdditionalDataImpl instance) =>
    <String, dynamic>{
      'delivery_method': instance.deliveryMethod,
      'pickup_store': instance.pickupStore,
      'store_code': instance.storeCode,
      'vendor_amount': instance.vendorAmount,
      'merchant_settlement_amount': instance.merchantSettlementAmount,
      'vendor_reference_code': instance.vendorReferenceCode,
    };
