import 'package:freezed_annotation/freezed_annotation.dart';

part 'vital_signs_datum.freezed.dart';
part 'vital_signs_datum.g.dart';

@freezed
class VitalSignsDatum with _$VitalSignsDatum {
  factory VitalSignsDatum({
    String? lasCheckDate,
    int? height,
    int? weight,
    double? bmi,
    int? oxygenSaturation,
    String? bloodPressure,
    int? pulse,
    double? temperature,
  }) = _VitalSignsDatum;

  factory VitalSignsDatum.fromJson(Map<String, dynamic> json) =>
      _$VitalSignsDatumFromJson(json);
}
