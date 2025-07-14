// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_due_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentsDueDatumImpl _$$PaymentsDueDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentsDueDatumImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      patientName: json['patientName'] as String?,
      doctorName: json['doctorName'] as String?,
      respCenter: json['respCenter'] as String?,
      payMethod: json['payMethod'] as String?,
      isSaudi: json['isSaudi'] as String?,
      telephone: json['telephone'] as String?,
      fileNum: (json['fileNum'] as num?)?.toInt(),
      transDate: json['transDate'] as String?,
      locationNmae: json['locationNmae'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      totalWitVatAmount: (json['totalWitVatAmount'] as num?)?.toInt(),
      vatAmount: (json['vatAmount'] as num?)?.toInt(),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaymentsDueDatumImplToJson(
        _$PaymentsDueDatumImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'patientName': instance.patientName,
      'doctorName': instance.doctorName,
      'respCenter': instance.respCenter,
      'payMethod': instance.payMethod,
      'isSaudi': instance.isSaudi,
      'telephone': instance.telephone,
      'fileNum': instance.fileNum,
      'transDate': instance.transDate,
      'locationNmae': instance.locationNmae,
      'totalAmount': instance.totalAmount,
      'totalWitVatAmount': instance.totalWitVatAmount,
      'vatAmount': instance.vatAmount,
      'orders': instance.orders,
    };
