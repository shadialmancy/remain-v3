// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recharge_wallet_balance_body.freezed.dart';
part 'recharge_wallet_balance_body.g.dart';

@freezed
class RechargeWalletBalanceBody with _$RechargeWalletBalanceBody {
  factory RechargeWalletBalanceBody({
    @JsonKey(name: 'patientID') String? patientId,
    @JsonKey(name: 'programID') String? programId,
    @JsonKey(name: 'programVerID') String? programVerId,
    @JsonKey(name: 'bookingID') String? bookingId,
    String? paymentRepId,
    bool? status,
    bool? isCash,
    String? amount,
    String? vatAmount,
    String? comment,
  }) = _RechargeWalletBalanceBody;

  factory RechargeWalletBalanceBody.fromJson(Map<String, dynamic> json) =>
      _$RechargeWalletBalanceBodyFromJson(json);
}
