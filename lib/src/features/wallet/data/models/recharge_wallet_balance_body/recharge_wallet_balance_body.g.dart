// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge_wallet_balance_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RechargeWalletBalanceBodyImpl _$$RechargeWalletBalanceBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$RechargeWalletBalanceBodyImpl(
      patientId: json['patientID'] as String?,
      programId: json['programID'] as String?,
      programVerId: json['programVerID'] as String?,
      bookingId: json['bookingID'] as String?,
      paymentRepId: json['paymentRepId'] as String?,
      status: json['status'] as bool?,
      isCash: json['isCash'] as bool?,
      amount: json['amount'] as String?,
      vatAmount: json['vatAmount'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$RechargeWalletBalanceBodyImplToJson(
        _$RechargeWalletBalanceBodyImpl instance) =>
    <String, dynamic>{
      'patientID': instance.patientId,
      'programID': instance.programId,
      'programVerID': instance.programVerId,
      'bookingID': instance.bookingId,
      'paymentRepId': instance.paymentRepId,
      'status': instance.status,
      'isCash': instance.isCash,
      'amount': instance.amount,
      'vatAmount': instance.vatAmount,
      'comment': instance.comment,
    };
