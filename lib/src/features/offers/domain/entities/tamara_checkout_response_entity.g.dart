// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tamara_checkout_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TamaraCheckoutResponseEntityImpl _$$TamaraCheckoutResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TamaraCheckoutResponseEntityImpl(
      orderId: json['order_id'] as String?,
      checkoutId: json['checkout_id'] as String?,
      checkoutUrl: json['checkout_url'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$TamaraCheckoutResponseEntityImplToJson(
        _$TamaraCheckoutResponseEntityImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'checkout_id': instance.checkoutId,
      'checkout_url': instance.checkoutUrl,
      'status': instance.status,
    };
