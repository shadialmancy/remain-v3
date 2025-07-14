// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'insurance_info.freezed.dart';
part 'insurance_info.g.dart';

@freezed
class InsuranceInfo with _$InsuranceInfo {
  factory InsuranceInfo({
    @JsonKey(name: 'InsuranceCompany') String? insuranceCompany,
    @JsonKey(name: 'PolicyHolder') String? policyHolder,
    @JsonKey(name: 'BeneficiaryNum') String? beneficiaryNum,
    @JsonKey(name: 'ExpierDate') String? expierDate,
    @JsonKey(name: 'PoliceNum') String? policeNum,
    @JsonKey(name: 'MAXLimit') num? maxLimit,
    @JsonKey(name: 'Class') String? datumClass,
    @JsonKey(name: 'DeductibleRate') num? deductibleRate,
    @JsonKey(name: 'Gender') String? gender,
    @JsonKey(name: 'IsValid') bool? isValid,
    @JsonKey(name: 'Cardimage') dynamic cardimage,
  }) = _InsuranceInfo;

  factory InsuranceInfo.fromJson(Map<String, dynamic> json) =>
      _$InsuranceInfoFromJson(json);
}
