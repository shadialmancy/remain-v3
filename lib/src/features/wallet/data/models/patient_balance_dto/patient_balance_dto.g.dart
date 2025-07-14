// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_balance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientBalanceDtoImpl _$$PatientBalanceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientBalanceDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      walletData: (json['data'] as List<dynamic>?)
          ?.map((e) => WalletData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientBalanceDtoImplToJson(
        _$PatientBalanceDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.walletData,
    };
