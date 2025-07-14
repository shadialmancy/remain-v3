// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'app_time.dart';

part 'availability.freezed.dart';
part 'availability.g.dart';

@freezed
class Availability with _$Availability {
  factory Availability({
    @JsonKey(name: 'day_name_eng') String? dayNameEng,
    @JsonKey(name: 'day_name_arb') String? dayNameArb,
    @JsonKey(name: 'day_number') String? dayNumber,
    List<AppTime>? appTimes,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  factory Availability.generateFakeData({int numOfGenerate = 12}) =>
      Availability(
          appTimes: List.generate(
        numOfGenerate,
        (index) => AppTime(
          timeSlot: "2024-05-31 04:00 PM",
        ),
      ));
}
