// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctor_profile.dart';
import 'service_info.dart';

part 'doctor_data.freezed.dart';
part 'doctor_data.g.dart';

@freezed
class DoctorData with _$DoctorData {
  factory DoctorData({
    @JsonKey(name: 'doctorID') num? doctorId,
    String? engName,
    String? arbName,
    num? servicePrice,
    @JsonKey(name: 'specID') num? specId,
    String? specialityEngName,
    String? specialityArbName,
    @JsonKey(name: 'facilityID') num? facilityId,
    String? facilityName,
    bool? isOnline,
    String? status,
    num? rates,
    num? stars,
    ServiceInfo? serviceInfo,
    DoctorProfile? doctorProfile,
  }) = _DoctorData;

  factory DoctorData.fromJson(Map<String, dynamic> json) =>
      _$DoctorDataFromJson(json);
}
