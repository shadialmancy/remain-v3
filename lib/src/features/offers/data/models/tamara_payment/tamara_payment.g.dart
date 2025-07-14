// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tamara_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TamaraPaymentImpl _$$TamaraPaymentImplFromJson(Map<String, dynamic> json) =>
    _$TamaraPaymentImpl(
      totalAmount: json['total_amount'] == null
          ? null
          : TotalAmount.fromJson(json['total_amount'] as Map<String, dynamic>),
      shippingAmount: json['shipping_amount'] == null
          ? null
          : ShippingAmount.fromJson(
              json['shipping_amount'] as Map<String, dynamic>),
      taxAmount: json['tax_amount'] == null
          ? null
          : TaxAmount.fromJson(json['tax_amount'] as Map<String, dynamic>),
      orderReferenceId: json['order_reference_id'] as String?,
      orderNumber: json['order_number'] as String?,
      discount: json['discount'] == null
          ? null
          : Discount.fromJson(json['discount'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      consumer: json['consumer'] == null
          ? null
          : Consumer.fromJson(json['consumer'] as Map<String, dynamic>),
      countryCode: json['country_code'] as String?,
      description: json['description'] as String?,
      merchantUrl: json['merchant_url'] == null
          ? null
          : MerchantUrl.fromJson(json['merchant_url'] as Map<String, dynamic>),
      paymentType: json['payment_type'] as String?,
      instalments: json['instalments'] as num?,
      billingAddress: json['billing_address'] == null
          ? null
          : BillingAddress.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : ShippingAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      platform: json['platform'] as String?,
      isMobile: json['is_mobile'] as bool?,
      locale: json['locale'] as String?,
      riskAssessment: json['risk_assessment'] == null
          ? null
          : RiskAssessment.fromJson(
              json['risk_assessment'] as Map<String, dynamic>),
      additionalData: json['additional_data'] == null
          ? null
          : AdditionalData.fromJson(
              json['additional_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TamaraPaymentImplToJson(_$TamaraPaymentImpl instance) =>
    <String, dynamic>{
      'total_amount': instance.totalAmount,
      'shipping_amount': instance.shippingAmount,
      'tax_amount': instance.taxAmount,
      'order_reference_id': instance.orderReferenceId,
      'order_number': instance.orderNumber,
      'discount': instance.discount,
      'items': instance.items,
      'consumer': instance.consumer,
      'country_code': instance.countryCode,
      'description': instance.description,
      'merchant_url': instance.merchantUrl,
      'payment_type': instance.paymentType,
      'instalments': instance.instalments,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
      'platform': instance.platform,
      'is_mobile': instance.isMobile,
      'locale': instance.locale,
      'risk_assessment': instance.riskAssessment,
      'additional_data': instance.additionalData,
    };
