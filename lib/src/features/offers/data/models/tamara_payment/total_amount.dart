import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_amount.freezed.dart';
part 'total_amount.g.dart';

@freezed
class TotalAmount with _$TotalAmount {
  factory TotalAmount({
    num? amount,
    String? currency,
  }) = _TotalAmount;

  factory TotalAmount.fromJson(Map<String, dynamic> json) =>
      _$TotalAmountFromJson(json);
}
