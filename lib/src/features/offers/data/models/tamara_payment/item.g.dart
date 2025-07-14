// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      referenceId: json['reference_id'] as String?,
      sku: json['sku'] as String?,
      quantity: json['quantity'] as num?,
      discountAmount: json['discount_amount'] == null
          ? null
          : DiscountAmount.fromJson(
              json['discount_amount'] as Map<String, dynamic>),
      taxAmount: json['tax_amount'] == null
          ? null
          : TaxAmount.fromJson(json['tax_amount'] as Map<String, dynamic>),
      unitPrice: json['unit_price'] == null
          ? null
          : UnitPrice.fromJson(json['unit_price'] as Map<String, dynamic>),
      totalAmount: json['total_amount'] == null
          ? null
          : TotalAmount.fromJson(json['total_amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'reference_id': instance.referenceId,
      'sku': instance.sku,
      'quantity': instance.quantity,
      'discount_amount': instance.discountAmount,
      'tax_amount': instance.taxAmount,
      'unit_price': instance.unitPrice,
      'total_amount': instance.totalAmount,
    };
