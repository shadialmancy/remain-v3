import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount.freezed.dart';
part 'amount.g.dart';

@freezed
class Amount with _$Amount {
  factory Amount({
    num? amount,
    String? currency,
  }) = _Amount;

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);
}
