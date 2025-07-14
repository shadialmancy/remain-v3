// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_booking_payment_body.freezed.dart';
part 'post_booking_payment_body.g.dart';

@freezed
class PostBookingPaymentBody with _$PostBookingPaymentBody {
  factory PostBookingPaymentBody({
    @JsonKey(name: 'patientID') String? patientId,
    @JsonKey(name: 'programID') String? programId,
    @JsonKey(name: 'programVerID') String? programVerId,
    @JsonKey(name: 'bookingID') String? bookingId,
    @JsonKey(name: 'locationID') String? locationID,
    String? paymentRepId,
    bool? status,
    bool? isCash,
    String? amount,
    String? vatAmount,
    String? comment,
  }) = _PostBookingPaymentBody;

  factory PostBookingPaymentBody.fromJson(Map<String, dynamic> json) =>
      _$PostBookingPaymentBodyFromJson(json);
}
