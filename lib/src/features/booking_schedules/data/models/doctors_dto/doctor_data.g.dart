// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorDataImpl _$$DoctorDataImplFromJson(Map<String, dynamic> json) =>
    _$DoctorDataImpl(
      doctorId: json['doctorID'] as num?,
      engName: json['engName'] as String?,
      arbName: json['arbName'] as String?,
      servicePrice: json['servicePrice'] as num?,
      specId: json['specID'] as num?,
      specialityEngName: json['specialityEngName'] as String?,
      specialityArbName: json['specialityArbName'] as String?,
      facilityId: json['facilityID'] as num?,
      facilityName: json['facilityName'] as String?,
      isOnline: json['isOnline'] as bool?,
      status: json['status'] as String?,
      rates: json['rates'] as num?,
      stars: json['stars'] as num?,
      serviceInfo: json['serviceInfo'] == null
          ? null
          : ServiceInfo.fromJson(json['serviceInfo'] as Map<String, dynamic>),
      doctorProfile: json['doctorProfile'] == null
          ? null
          : DoctorProfile.fromJson(
              json['doctorProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorDataImplToJson(_$DoctorDataImpl instance) =>
    <String, dynamic>{
      'doctorID': instance.doctorId,
      'engName': instance.engName,
      'arbName': instance.arbName,
      'servicePrice': instance.servicePrice,
      'specID': instance.specId,
      'specialityEngName': instance.specialityEngName,
      'specialityArbName': instance.specialityArbName,
      'facilityID': instance.facilityId,
      'facilityName': instance.facilityName,
      'isOnline': instance.isOnline,
      'status': instance.status,
      'rates': instance.rates,
      'stars': instance.stars,
      'serviceInfo': instance.serviceInfo,
      'doctorProfile': instance.doctorProfile,
    };
