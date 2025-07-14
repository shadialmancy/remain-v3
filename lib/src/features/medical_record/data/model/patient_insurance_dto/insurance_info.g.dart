// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InsuranceInfoImpl _$$InsuranceInfoImplFromJson(Map<String, dynamic> json) =>
    _$InsuranceInfoImpl(
      insuranceCompany: json['InsuranceCompany'] as String?,
      policyHolder: json['PolicyHolder'] as String?,
      beneficiaryNum: json['BeneficiaryNum'] as String?,
      expierDate: json['ExpierDate'] as String?,
      policeNum: json['PoliceNum'] as String?,
      maxLimit: json['MAXLimit'] as num?,
      datumClass: json['Class'] as String?,
      deductibleRate: json['DeductibleRate'] as num?,
      gender: json['Gender'] as String?,
      isValid: json['IsValid'] as bool?,
      cardimage: json['Cardimage'],
    );

Map<String, dynamic> _$$InsuranceInfoImplToJson(_$InsuranceInfoImpl instance) =>
    <String, dynamic>{
      'InsuranceCompany': instance.insuranceCompany,
      'PolicyHolder': instance.policyHolder,
      'BeneficiaryNum': instance.beneficiaryNum,
      'ExpierDate': instance.expierDate,
      'PoliceNum': instance.policeNum,
      'MAXLimit': instance.maxLimit,
      'Class': instance.datumClass,
      'DeductibleRate': instance.deductibleRate,
      'Gender': instance.gender,
      'IsValid': instance.isValid,
      'Cardimage': instance.cardimage,
    };
