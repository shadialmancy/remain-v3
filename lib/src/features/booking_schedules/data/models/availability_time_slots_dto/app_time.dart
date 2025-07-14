// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_time.freezed.dart';
part 'app_time.g.dart';

@freezed
class AppTime with _$AppTime {
  factory AppTime({
    @JsonKey(name: 'time_slot') String? timeSlot,
    bool? night,
  }) = _AppTime;

  factory AppTime.fromJson(Map<String, dynamic> json) =>
      _$AppTimeFromJson(json);
}
