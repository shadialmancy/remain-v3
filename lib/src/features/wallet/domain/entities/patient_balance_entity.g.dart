// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_balance_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientBalanceEntityImpl _$$PatientBalanceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientBalanceEntityImpl(
      requestId: json['requestId'] as String?,
      code: json['code'] as num?,
      errorMessage: json['errorMessage'] as String?,
      walletData: (json['walletData'] as List<dynamic>?)
          ?.map((e) => WalletData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientBalanceEntityImplToJson(
        _$PatientBalanceEntityImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'code': instance.code,
      'errorMessage': instance.errorMessage,
      'walletData': instance.walletData,
    };
