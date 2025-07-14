// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription_info.freezed.dart';
part 'prescription_info.g.dart';

@freezed
class PrescriptionInfo with _$PrescriptionInfo {
  factory PrescriptionInfo({
    num? requestNum,
    String? transDate,
    String? patientName,
    String? doctorEngName,
    String? doctorArbName,
    @JsonKey(name: 'report_spName') String? reportSpName,
    String? rptId,
  }) = _PrescriptionInfo;

  factory PrescriptionInfo.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionInfoFromJson(json);
}
