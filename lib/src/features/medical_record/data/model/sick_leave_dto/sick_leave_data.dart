import 'package:freezed_annotation/freezed_annotation.dart';

part 'sick_leave_data.freezed.dart';
part 'sick_leave_data.g.dart';

@freezed
class SickLeaveData with _$SickLeaveData {
  factory SickLeaveData({
    String? spName,
    String? rptId,
    String? patientMrn,
    String? trnCodeCol,
    String? regDate,
  }) = _SickLeaveData;

  factory SickLeaveData.fromJson(Map<String, dynamic> json) =>
      _$SickLeaveDataFromJson(json);
}
