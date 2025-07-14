// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmountDataImpl _$$AmountDataImplFromJson(Map<String, dynamic> json) =>
    _$AmountDataImpl(
      serviceItemId: json['ServiceItemID'] as String?,
      patientEligibilityId: json['PatientEligibilityID'] as String?,
      coverage: json['Coverage'] as String?,
      msgCoverage: json['MsgCoverage'] as String?,
      respCenterId: json['RespCenterID'] as String?,
      respCenterCode: json['RespCenterCode'] as String?,
      defaultRespCenter: json['DefaultRespCenter'] as String?,
      responsibiltyCenetrs: json['ResponsibiltyCenetrs'] as String?,
      costPrice: json['CostPrice'] as num?,
      basicPrice: json['BasicPrice'] as num?,
      sellingPrice: json['SellingPrice'] as num?,
      gross: json['Gross'] as num?,
      discountPrice: json['DiscountPrice'] as num?,
      patientEligibilityAmount: json['PatientEligibilityAmount'] as String?,
      patientEligibilityConsumed: json['PatientEligibilityConsumed'] as String?,
      patientBalance: json['PatientBalance'] as String?,
      serviceDosages: json['ServiceDosages'] as String?,
      amount: json['Amount'] as num?,
      sivat: json['SIVAT'] as String?,
      vatc: json['VATC'] as num?,
      vatr: json['VATR'] as num?,
      isValidVoucher: json['IsValidVoucher'] as bool?,
      voucherMessage: json['VoucherMessage'] as String?,
    );

Map<String, dynamic> _$$AmountDataImplToJson(_$AmountDataImpl instance) =>
    <String, dynamic>{
      'ServiceItemID': instance.serviceItemId,
      'PatientEligibilityID': instance.patientEligibilityId,
      'Coverage': instance.coverage,
      'MsgCoverage': instance.msgCoverage,
      'RespCenterID': instance.respCenterId,
      'RespCenterCode': instance.respCenterCode,
      'DefaultRespCenter': instance.defaultRespCenter,
      'ResponsibiltyCenetrs': instance.responsibiltyCenetrs,
      'CostPrice': instance.costPrice,
      'BasicPrice': instance.basicPrice,
      'SellingPrice': instance.sellingPrice,
      'Gross': instance.gross,
      'DiscountPrice': instance.discountPrice,
      'PatientEligibilityAmount': instance.patientEligibilityAmount,
      'PatientEligibilityConsumed': instance.patientEligibilityConsumed,
      'PatientBalance': instance.patientBalance,
      'ServiceDosages': instance.serviceDosages,
      'Amount': instance.amount,
      'SIVAT': instance.sivat,
      'VATC': instance.vatc,
      'VATR': instance.vatr,
      'IsValidVoucher': instance.isValidVoucher,
      'VoucherMessage': instance.voucherMessage,
    };
