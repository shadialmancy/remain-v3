import 'package:freezed_annotation/freezed_annotation.dart';

import 'booking_body/insurance.dart';
import 'booking_body/patient.dart';
part 'booking_data.freezed.dart';
part 'booking_data.g.dart';

@freezed
class BookingData with _$BookingData {
  factory BookingData({
    String? doctorId,
    String? facilityId,
    String? serviceId,
    String? time,
    String? source,
    dynamic locationId,
    Patient? patient,
    Insurance? insurance,
    String? telemedicineUrl,
  }) = _BookingData;

  factory BookingData.fromJson(Map<String, dynamic> json) =>
      _$BookingDataFromJson(json);
}
