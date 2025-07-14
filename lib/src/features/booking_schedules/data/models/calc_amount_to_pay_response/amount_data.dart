// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount_data.freezed.dart';
part 'amount_data.g.dart';

@freezed
class AmountData with _$AmountData {
  factory AmountData({
    @JsonKey(name: 'ServiceItemID') String? serviceItemId,
    @JsonKey(name: 'PatientEligibilityID') String? patientEligibilityId,
    @JsonKey(name: 'Coverage') String? coverage,
    @JsonKey(name: 'MsgCoverage') String? msgCoverage,
    @JsonKey(name: 'RespCenterID') String? respCenterId,
    @JsonKey(name: 'RespCenterCode') String? respCenterCode,
    @JsonKey(name: 'DefaultRespCenter') String? defaultRespCenter,
    @JsonKey(name: 'ResponsibiltyCenetrs') String? responsibiltyCenetrs,
    @JsonKey(name: 'CostPrice') num? costPrice,
    @JsonKey(name: 'BasicPrice') num? basicPrice,
    @JsonKey(name: 'SellingPrice') num? sellingPrice,
    @JsonKey(name: 'Gross') num? gross,
    @JsonKey(name: 'DiscountPrice') num? discountPrice,
    @JsonKey(name: 'PatientEligibilityAmount') String? patientEligibilityAmount,
    @JsonKey(name: 'PatientEligibilityConsumed')
    String? patientEligibilityConsumed,
    @JsonKey(name: 'PatientBalance') String? patientBalance,
    @JsonKey(name: 'ServiceDosages') String? serviceDosages,
    @JsonKey(name: 'Amount') num? amount,
    @JsonKey(name: 'SIVAT') String? sivat,
    @JsonKey(name: 'VATC') num? vatc,
    @JsonKey(name: 'VATR') num? vatr,
    @JsonKey(name: 'IsValidVoucher') bool? isValidVoucher,
    @JsonKey(name: 'VoucherMessage') String? voucherMessage,
  }) = _AmountData;

  factory AmountData.fromJson(Map<String, dynamic> json) =>
      _$AmountDataFromJson(json);
}
