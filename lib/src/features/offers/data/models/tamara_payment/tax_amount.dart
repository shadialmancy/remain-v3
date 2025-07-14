import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_amount.freezed.dart';
part 'tax_amount.g.dart';

@freezed
class TaxAmount with _$TaxAmount {
  factory TaxAmount({
    num? amount,
    String? currency,
  }) = _TaxAmount;

  factory TaxAmount.fromJson(Map<String, dynamic> json) =>
      _$TaxAmountFromJson(json);
}
