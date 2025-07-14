import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_amount.freezed.dart';
part 'shipping_amount.g.dart';

@freezed
class ShippingAmount with _$ShippingAmount {
  factory ShippingAmount({
    num? amount,
    String? currency,
  }) = _ShippingAmount;

  factory ShippingAmount.fromJson(Map<String, dynamic> json) =>
      _$ShippingAmountFromJson(json);
}
