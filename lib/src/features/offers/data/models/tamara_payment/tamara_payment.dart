import 'package:freezed_annotation/freezed_annotation.dart';

import 'additional_data.dart';
import 'billing_address.dart';
import 'consumer.dart';
import 'discount.dart';
import 'item.dart';
import 'merchant_url.dart';
import 'risk_assessment.dart';
import 'shipping_address.dart';
import 'shipping_amount.dart';
import 'tax_amount.dart';
import 'total_amount.dart';

part 'tamara_payment.freezed.dart';
part 'tamara_payment.g.dart';

@freezed
class TamaraPayment with _$TamaraPayment {
  factory TamaraPayment({
    @JsonKey(name: 'total_amount') TotalAmount? totalAmount,
    @JsonKey(name: 'shipping_amount') ShippingAmount? shippingAmount,
    @JsonKey(name: 'tax_amount') TaxAmount? taxAmount,
    @JsonKey(name: 'order_reference_id') String? orderReferenceId,
    @JsonKey(name: 'order_number') String? orderNumber,
    Discount? discount,
    List<Item>? items,
    Consumer? consumer,
    @JsonKey(name: 'country_code') String? countryCode,
    String? description,
    @JsonKey(name: 'merchant_url') MerchantUrl? merchantUrl,
    @JsonKey(name: 'payment_type') String? paymentType,
    num? instalments,
    @JsonKey(name: 'billing_address') BillingAddress? billingAddress,
    @JsonKey(name: 'shipping_address') ShippingAddress? shippingAddress,
    String? platform,
    @JsonKey(name: 'is_mobile') bool? isMobile,
    String? locale,
    @JsonKey(name: 'risk_assessment') RiskAssessment? riskAssessment,
    @JsonKey(name: 'additional_data') AdditionalData? additionalData,
  }) = _TamaraPayment;

  factory TamaraPayment.fromJson(Map<String, dynamic> json) =>
      _$TamaraPaymentFromJson(json);
}
