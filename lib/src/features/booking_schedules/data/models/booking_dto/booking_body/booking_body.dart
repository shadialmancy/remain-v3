// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'insurance.dart';
import 'patient.dart';

part 'booking_body.freezed.dart';
part 'booking_body.g.dart';

@freezed
class BookingBody with _$BookingBody {
  factory BookingBody({
    String? doctorid,
    @JsonKey(name: 'facilityID') String? facilityId,
    @JsonKey(name: 'serviceID') String? serviceId,
    String? time,
    String? source,
    @JsonKey(name: 'telemedicine_url') String? telemedicineUrl,
    Patient? patient,
    Insurance? insurance,
    @JsonKey(name: 'LocationID') num? locationId,
  }) = _BookingBody;

  factory BookingBody.fromJson(Map<String, dynamic> json) =>
      _$BookingBodyFromJson(json);
}
