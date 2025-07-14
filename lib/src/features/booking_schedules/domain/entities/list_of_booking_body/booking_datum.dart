import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_datum.freezed.dart';
part 'booking_datum.g.dart';

@freezed
class BookingDatum with _$BookingDatum {
  factory BookingDatum({
    @JsonKey(name: 'patientID') String? patientId,
    // @JsonKey(name: 'programID') String? programId,
    // @JsonKey(name: 'programVerID') String? programVerId,
    // @JsonKey(name: 'bookingID') String? bookingId,
    String? paymentRepId,
    bool? status,
    bool? isCash,
    String? amount,
    String? vatAmount,
    String? comment,
    @JsonKey(name: 'locationID') String? locationId,
    String? paymentMethod,
  }) = _BookingDatum;

  factory BookingDatum.fromJson(Map<String, dynamic> json) =>
      _$BookingDatumFromJson(json);
}
