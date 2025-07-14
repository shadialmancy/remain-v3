// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletDataImpl _$$WalletDataImplFromJson(Map<String, dynamic> json) =>
    _$WalletDataImpl(
      balance: json['Balance'] as num?,
      debit: json['Debit'] as num?,
      credit: json['Credit'] as num?,
    );

Map<String, dynamic> _$$WalletDataImplToJson(_$WalletDataImpl instance) =>
    <String, dynamic>{
      'Balance': instance.balance,
      'Debit': instance.debit,
      'Credit': instance.credit,
    };
