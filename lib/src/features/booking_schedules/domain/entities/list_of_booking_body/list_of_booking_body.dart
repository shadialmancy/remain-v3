import 'package:freezed_annotation/freezed_annotation.dart';

import 'booking_datum.dart';
import 'program_data.dart';

part 'list_of_booking_body.freezed.dart';
part 'list_of_booking_body.g.dart';

@freezed
class ListOfBookingBody with _$ListOfBookingBody {
  factory ListOfBookingBody({
    @JsonKey(name: 'Data') BookingDatum? data,
    @JsonKey(name: 'ProgramData') List<ProgramData>? programData,
  }) = _ListOfBookingBody;

  factory ListOfBookingBody.fromJson(Map<String, dynamic> json) =>
      _$ListOfBookingBodyFromJson(json);
}
