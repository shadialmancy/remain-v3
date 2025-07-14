// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge_wallet_balance_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RechargeWalletBalanceResponseEntityImpl
    _$$RechargeWalletBalanceResponseEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$RechargeWalletBalanceResponseEntityImpl(
          requestId: json['request_id'] as String?,
          code: json['code'] as num?,
          errorMessage: json['error_message'] as String?,
        );

Map<String, dynamic> _$$RechargeWalletBalanceResponseEntityImplToJson(
        _$RechargeWalletBalanceResponseEntityImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
    };
