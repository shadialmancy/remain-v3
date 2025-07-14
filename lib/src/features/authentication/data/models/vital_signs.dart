// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'vital_signs.freezed.dart';
part 'vital_signs.g.dart';

@HiveType(typeId: 1, adapterName: 'VitalSignsAdapter')
@freezed
class VitalSigns with _$VitalSigns {
  factory VitalSigns({
    @HiveField(0) @JsonKey(name: 'BloodPressureHi') num? bloodPressureHi,
    @HiveField(1) @JsonKey(name: 'BloodPressureLo') num? bloodPressureLo,
    @HiveField(2) @JsonKey(name: 'Temperature') num? temperature,
    @HiveField(3) @JsonKey(name: 'Height') double? height,
    @HiveField(4) @JsonKey(name: 'Weight') double? weight,
    @HiveField(5) @JsonKey(name: 'OxygenSaturation') num? oxygenSaturation,
    @HiveField(6) @JsonKey(name: 'Pulse') num? pulse,
    @HiveField(7) @JsonKey(name: 'ForDate') String? forDate,
    @HiveField(8) @JsonKey(name: 'RespiratoryRate') num? respiratoryRate,
    @HiveField(9) @JsonKey(name: 'Remarks') String? remarks,
  }) = _VitalSigns;

  factory VitalSigns.fromJson(Map<String, dynamic> json) =>
      _$VitalSignsFromJson(json);
}
