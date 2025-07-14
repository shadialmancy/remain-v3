// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionInfoImpl _$$PrescriptionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PrescriptionInfoImpl(
      requestNum: json['requestNum'] as num?,
      transDate: json['transDate'] as String?,
      patientName: json['patientName'] as String?,
      doctorEngName: json['doctorEngName'] as String?,
      doctorArbName: json['doctorArbName'] as String?,
      reportSpName: json['report_spName'] as String?,
      rptId: json['rptId'] as String?,
    );

Map<String, dynamic> _$$PrescriptionInfoImplToJson(
        _$PrescriptionInfoImpl instance) =>
    <String, dynamic>{
      'requestNum': instance.requestNum,
      'transDate': instance.transDate,
      'patientName': instance.patientName,
      'doctorEngName': instance.doctorEngName,
      'doctorArbName': instance.doctorArbName,
      'report_spName': instance.reportSpName,
      'rptId': instance.rptId,
    };
