// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'insurance_item.freezed.dart';
part 'insurance_item.g.dart';

@freezed
class InsuranceItem with _$InsuranceItem {
  factory InsuranceItem({
    @JsonKey(name: 'PatEngName') String? patEngName,
    @JsonKey(name: 'PatArbName') String? patArbName,
    @JsonKey(name: 'DocEngName') String? docEngName,
    @JsonKey(name: 'DocArbName') String? docArbName,
    @JsonKey(name: 'ApprovalNum') String? approvalNum,
    @JsonKey(name: 'ServiceName') String? serviceName,
    @JsonKey(name: 'ApprovalStatus') String? approvalStatus,
    @JsonKey(name: 'Msg') String? msg,
    @JsonKey(name: 'ApprovalExpiryDate') String? approvalExpiryDate,
  }) = _InsuranceItem;

  factory InsuranceItem.fromJson(Map<String, dynamic> json) =>
      _$InsuranceItemFromJson(json);
}
