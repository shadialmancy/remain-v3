import 'package:freezed_annotation/freezed_annotation.dart';

import 'discount_amount.dart';
import 'tax_amount.dart';
import 'total_amount.dart';
import 'unit_price.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    String? name,
    String? type,
    @JsonKey(name: 'reference_id') String? referenceId,
    String? sku,
    num? quantity,
    @JsonKey(name: 'discount_amount') DiscountAmount? discountAmount,
    @JsonKey(name: 'tax_amount') TaxAmount? taxAmount,
    @JsonKey(name: 'unit_price') UnitPrice? unitPrice,
    @JsonKey(name: 'total_amount') TotalAmount? totalAmount,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
