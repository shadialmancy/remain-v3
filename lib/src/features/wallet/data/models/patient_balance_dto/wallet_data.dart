// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_data.freezed.dart';
part 'wallet_data.g.dart';

@freezed
class WalletData with _$WalletData {
  factory WalletData({
    @JsonKey(name: 'Balance') num? balance,
    @JsonKey(name: 'Debit') num? debit,
    @JsonKey(name: 'Credit') num? credit,
  }) = _WalletData;

  factory WalletData.fromJson(Map<String, dynamic> json) =>
      _$WalletDataFromJson(json);
}
