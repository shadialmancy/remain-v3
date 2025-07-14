import 'package:freezed_annotation/freezed_annotation.dart';

import 'availability.dart';
import 'info.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    Info? info,
    List<Availability>? availabilities,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
