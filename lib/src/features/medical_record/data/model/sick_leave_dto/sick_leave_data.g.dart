// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sick_leave_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SickLeaveDataImpl _$$SickLeaveDataImplFromJson(Map<String, dynamic> json) =>
    _$SickLeaveDataImpl(
      spName: json['spName'] as String?,
      rptId: json['rptId'] as String?,
      patientMrn: json['patientMrn'] as String?,
      trnCodeCol: json['trnCodeCol'] as String?,
      regDate: json['regDate'] as String?,
    );

Map<String, dynamic> _$$SickLeaveDataImplToJson(_$SickLeaveDataImpl instance) =>
    <String, dynamic>{
      'spName': instance.spName,
      'rptId': instance.rptId,
      'patientMrn': instance.patientMrn,
      'trnCodeCol': instance.trnCodeCol,
      'regDate': instance.regDate,
    };
