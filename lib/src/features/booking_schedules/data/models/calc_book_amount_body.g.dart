// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_book_amount_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalcBookAmountBodyImpl _$$CalcBookAmountBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$CalcBookAmountBodyImpl(
      bookingId: json['bookingID'] as String?,
      pateintId: json['pateintId'] as String?,
      accountId: json['accountId'] as String?,
      doctorId: json['doctorId'] as String?,
      docSpecId: json['docSpecId'] as String?,
      admissionId: json['admissionId'] as String?,
      programVersionPatientId: json['programVersionPatientId'] as String?,
      programId: json['programId'] as String?,
      inOut: json['inOut'] as String?,
      payMethod: json['payMethod'] as String?,
      transDate: json['transDate'] as String?,
      userId: json['userId'] as String?,
      groupId: json['groupId'] as String?,
      statusFlage: json['statusFlage'] as String?,
      serviceItemId: json['serviceItemId'] as String?,
      serviceCatId: json['serviceCatId'] as String?,
      quantity: json['quantity'] as String?,
      consultationTransHdrId: json['consultationTransHdrId'] as String?,
    );

Map<String, dynamic> _$$CalcBookAmountBodyImplToJson(
        _$CalcBookAmountBodyImpl instance) =>
    <String, dynamic>{
      'bookingID': instance.bookingId,
      'pateintId': instance.pateintId,
      'accountId': instance.accountId,
      'doctorId': instance.doctorId,
      'docSpecId': instance.docSpecId,
      'admissionId': instance.admissionId,
      'programVersionPatientId': instance.programVersionPatientId,
      'programId': instance.programId,
      'inOut': instance.inOut,
      'payMethod': instance.payMethod,
      'transDate': instance.transDate,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'statusFlage': instance.statusFlage,
      'serviceItemId': instance.serviceItemId,
      'serviceCatId': instance.serviceCatId,
      'quantity': instance.quantity,
      'consultationTransHdrId': instance.consultationTransHdrId,
    };
