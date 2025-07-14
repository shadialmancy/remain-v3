import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_profile.freezed.dart';
part 'doctor_profile.g.dart';

@freezed
class DoctorProfile with _$DoctorProfile {
  factory DoctorProfile({
    String? certificatesEng,
    String? certificatesArb,
    String? experienceArb,
    String? experienceEng,
    dynamic profilePhoto,
  }) = _DoctorProfile;

  factory DoctorProfile.fromJson(Map<String, dynamic> json) =>
      _$DoctorProfileFromJson(json);
}
