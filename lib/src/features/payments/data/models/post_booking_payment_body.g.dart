// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_booking_payment_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostBookingPaymentBodyImpl _$$PostBookingPaymentBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$PostBookingPaymentBodyImpl(
      patientId: json['patientID'] as String?,
      programId: json['programID'] as String?,
      programVerId: json['programVerID'] as String?,
      bookingId: json['bookingID'] as String?,
      locationID: json['locationID'] as String?,
      paymentRepId: json['paymentRepId'] as String?,
      status: json['status'] as bool?,
      isCash: json['isCash'] as bool?,
      amount: json['amount'] as String?,
      vatAmount: json['vatAmount'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$PostBookingPaymentBodyImplToJson(
        _$PostBookingPaymentBodyImpl instance) =>
    <String, dynamic>{
      'patientID': instance.patientId,
      'programID': instance.programId,
      'programVerID': instance.programVerId,
      'bookingID': instance.bookingId,
      'locationID': instance.locationID,
      'paymentRepId': instance.paymentRepId,
      'status': instance.status,
      'isCash': instance.isCash,
      'amount': instance.amount,
      'vatAmount': instance.vatAmount,
      'comment': instance.comment,
    };
