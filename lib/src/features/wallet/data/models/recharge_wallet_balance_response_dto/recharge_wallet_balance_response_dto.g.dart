// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge_wallet_balance_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RechargeWalletBalanceResponseDtoImpl
    _$$RechargeWalletBalanceResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$RechargeWalletBalanceResponseDtoImpl(
          requestId: json['request_id'] as String?,
          code: json['code'] as num?,
          errorMessage: json['error_message'] as String?,
        );

Map<String, dynamic> _$$RechargeWalletBalanceResponseDtoImplToJson(
        _$RechargeWalletBalanceResponseDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
    };
