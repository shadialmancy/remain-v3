// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'trans_dtl.dart';

part 'lab_results_data.freezed.dart';
part 'lab_results_data.g.dart';

@freezed
class LabResultsData with _$LabResultsData {
  factory LabResultsData({
    @JsonKey(name: 'thID') num? thId,
    num? transNum,
    num? doctorId,
    String? doctorArbName,
    String? doctorEngName,
    num? patFileNum,
    String? patEngName,
    @JsonKey(name: 'PatArbName') String? patArbName,
    String? respCenterArbName,
    String? respCenterEngName,
    String? paymethodEng,
    String? paymethodArb,
    String? transDate,
    num? amount,
    @JsonKey(name: 'report_spName') String? reportSpName,
    String? rptId,
    List<TransDtl>? transDtl,
  }) = _Datum;

  factory LabResultsData.fromJson(Map<String, dynamic> json) =>
      _$LabResultsDataFromJson(json);
}
