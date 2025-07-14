// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_results_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
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
      amount: json['amount'] as num?,
      reportSpName: json['report_spName'] as String?,
      rptId: json['rptId'] as String?,
      transDtl: (json['transDtl'] as List<dynamic>?)
          ?.map((e) => TransDtl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
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
      'amount': instance.amount,
      'report_spName': instance.reportSpName,
      'rptId': instance.rptId,
      'transDtl': instance.transDtl,
    };
