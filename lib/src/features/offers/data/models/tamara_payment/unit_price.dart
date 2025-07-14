import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_price.freezed.dart';
part 'unit_price.g.dart';

@freezed
class UnitPrice with _$UnitPrice {
  factory UnitPrice({
    num? amount,
    String? currency,
  }) = _UnitPrice;

  factory UnitPrice.fromJson(Map<String, dynamic> json) =>
      _$UnitPriceFromJson(json);
}
