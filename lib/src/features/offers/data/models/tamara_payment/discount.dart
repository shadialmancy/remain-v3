import 'package:freezed_annotation/freezed_annotation.dart';

import 'amount.dart';

part 'discount.freezed.dart';
part 'discount.g.dart';

@freezed
class Discount with _$Discount {
  factory Discount({
    String? name,
    Amount? amount,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);
}
