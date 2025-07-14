// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/recharge_wallet_balance_response_entity.dart';

part 'recharge_wallet_balance_response_dto.freezed.dart';
part 'recharge_wallet_balance_response_dto.g.dart';

@freezed
class RechargeWalletBalanceResponseDto with _$RechargeWalletBalanceResponseDto {
  factory RechargeWalletBalanceResponseDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    // List<TransactionData>? data,
  }) = _RechargeWalletBalanceResponseDto;

  factory RechargeWalletBalanceResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$RechargeWalletBalanceResponseDtoFromJson(json);
}

extension RechargeWalletBalanceResponseDtoX
    on RechargeWalletBalanceResponseDto {
  RechargeWalletBalanceResponseEntity toEntity() =>
      RechargeWalletBalanceResponseEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        // data: data,
      );
}
