import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_with_vat_data.freezed.dart';
part 'payment_with_vat_data.g.dart';

@freezed
class PaymentWithVatData with _$PaymentWithVatData {
  factory PaymentWithVatData({
    num? total,
    num? recharging,
    num? vat,
  }) = _PaymentWithVatData;

  factory PaymentWithVatData.fromJson(Map<String, dynamic> json) =>
      _$PaymentWithVatDataFromJson(json);
}
