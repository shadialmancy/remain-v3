import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_amount.freezed.dart';
part 'discount_amount.g.dart';

@freezed
class DiscountAmount with _$DiscountAmount {
  factory DiscountAmount({
    num? amount,
    String? currency,
  }) = _DiscountAmount;

  factory DiscountAmount.fromJson(Map<String, dynamic> json) =>
      _$DiscountAmountFromJson(json);
}
