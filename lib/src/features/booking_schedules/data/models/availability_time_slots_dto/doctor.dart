// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.freezed.dart';
part 'doctor.g.dart';

@freezed
class Doctor with _$Doctor {
  factory Doctor({
    String? engName,
    String? arbName,
    @JsonKey(name: 'doctorID') num? doctorId,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}
