// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingDatumImpl _$$BookingDatumImplFromJson(Map<String, dynamic> json) =>
    _$BookingDatumImpl(
      patientId: json['patientID'] as String?,
      paymentRepId: json['paymentRepId'] as String?,
      status: json['status'] as bool?,
      isCash: json['isCash'] as bool?,
      amount: json['amount'] as String?,
      vatAmount: json['vatAmount'] as String?,
      comment: json['comment'] as String?,
      locationId: json['locationID'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
    );

Map<String, dynamic> _$$BookingDatumImplToJson(_$BookingDatumImpl instance) =>
    <String, dynamic>{
      'patientID': instance.patientId,
      'paymentRepId': instance.paymentRepId,
      'status': instance.status,
      'isCash': instance.isCash,
      'amount': instance.amount,
      'vatAmount': instance.vatAmount,
      'comment': instance.comment,
      'locationID': instance.locationId,
      'paymentMethod': instance.paymentMethod,
    };
