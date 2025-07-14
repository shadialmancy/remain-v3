// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'trans_dtl.dart';

part 'record_statement_data.freezed.dart';
part 'record_statement_data.g.dart';

@freezed
class RecordStatementData with _$RecordStatementData {
  factory RecordStatementData({
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
    @JsonKey(name: 'report_spName') String? reportSpName,
    String? rptId,
    num? amount,
    List<TransDtl>? transDtl,
  }) = _RecordStatementData;

  factory RecordStatementData.fromJson(Map<String, dynamic> json) =>
      _$RecordStatementDataFromJson(json);
}
