// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_statement_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordStatementDataImpl _$$RecordStatementDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordStatementDataImpl(
      thId: json['thID'] as num?,
      transNum: json['transNum'] as num?,
      doctorId: json['doctorId'] as num?,
      doctorArbName: json['doctorArbName'] as String?,
      doctorEngName: json['doctorEngName'] as String?,
      patFileNum: json['patFileNum'] as num?,
      patEngName: json['patEngName'] as String?,
      patArbName: json['PatArbName'] as String?,
      respCenterArbName: json['respCenterArbName'] as String?,
      respCenterEngName: json['respCenterEngName'] as String?,
      paymethodEng: json['paymethodEng'] as String?,
      paymethodArb: json['paymethodArb'] as String?,
      transDate: json['transDate'] as String?,
      reportSpName: json['report_spName'] as String?,
      rptId: json['rptId'] as String?,
      amount: json['amount'] as num?,
      transDtl: (json['transDtl'] as List<dynamic>?)
          ?.map((e) => TransDtl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecordStatementDataImplToJson(
        _$RecordStatementDataImpl instance) =>
    <String, dynamic>{
      'thID': instance.thId,
      'transNum': instance.transNum,
      'doctorId': instance.doctorId,
      'doctorArbName': instance.doctorArbName,
      'doctorEngName': instance.doctorEngName,
      'patFileNum': instance.patFileNum,
      'patEngName': instance.patEngName,
      'PatArbName': instance.patArbName,
      'respCenterArbName': instance.respCenterArbName,
      'respCenterEngName': instance.respCenterEngName,
      'paymethodEng': instance.paymethodEng,
      'paymethodArb': instance.paymethodArb,
      'transDate': instance.transDate,
      'report_spName': instance.reportSpName,
      'rptId': instance.rptId,
      'amount': instance.amount,
      'transDtl': instance.transDtl,
    };
