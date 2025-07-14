// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorProfileImpl _$$DoctorProfileImplFromJson(Map<String, dynamic> json) =>
    _$DoctorProfileImpl(
      certificatesEng: json['certificatesEng'] as String?,
      certificatesArb: json['certificatesArb'] as String?,
      experienceArb: json['experienceArb'] as String?,
      experienceEng: json['experienceEng'] as String?,
      profilePhoto: json['profilePhoto'],
    );

Map<String, dynamic> _$$DoctorProfileImplToJson(_$DoctorProfileImpl instance) =>
    <String, dynamic>{
      'certificatesEng': instance.certificatesEng,
      'certificatesArb': instance.certificatesArb,
      'experienceArb': instance.experienceArb,
      'experienceEng': instance.experienceEng,
      'profilePhoto': instance.profilePhoto,
    };
