// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/recharge_wallet_balance_response_dto/recharge_wallet_balance_response_dto.dart';
part 'recharge_wallet_balance_response_entity.freezed.dart';
part 'recharge_wallet_balance_response_entity.g.dart';

@freezed
class RechargeWalletBalanceResponseEntity
    with _$RechargeWalletBalanceResponseEntity {
  factory RechargeWalletBalanceResponseEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
//    List<TransactionData>? data,
  }) = _RechargeWalletBalanceResponseEntity;

  factory RechargeWalletBalanceResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$RechargeWalletBalanceResponseEntityFromJson(json);
}

extension RechargeWalletBalanceResponseEntityX
    on RechargeWalletBalanceResponseEntity {
  RechargeWalletBalanceResponseDto toDto() => RechargeWalletBalanceResponseDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        //data: data,
      );
}
