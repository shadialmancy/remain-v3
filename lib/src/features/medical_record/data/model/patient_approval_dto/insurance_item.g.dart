// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InsuranceItemImpl _$$InsuranceItemImplFromJson(Map<String, dynamic> json) =>
    _$InsuranceItemImpl(
      patEngName: json['PatEngName'] as String?,
      patArbName: json['PatArbName'] as String?,
      docEngName: json['DocEngName'] as String?,
      docArbName: json['DocArbName'] as String?,
      approvalNum: json['ApprovalNum'] as String?,
      serviceName: json['ServiceName'] as String?,
      approvalStatus: json['ApprovalStatus'] as String?,
      msg: json['Msg'] as String?,
      approvalExpiryDate: json['ApprovalExpiryDate'] as String?,
    );

Map<String, dynamic> _$$InsuranceItemImplToJson(_$InsuranceItemImpl instance) =>
    <String, dynamic>{
      'PatEngName': instance.patEngName,
      'PatArbName': instance.patArbName,
      'DocEngName': instance.docEngName,
      'DocArbName': instance.docArbName,
      'ApprovalNum': instance.approvalNum,
      'ServiceName': instance.serviceName,
      'ApprovalStatus': instance.approvalStatus,
      'Msg': instance.msg,
      'ApprovalExpiryDate': instance.approvalExpiryDate,
    };
