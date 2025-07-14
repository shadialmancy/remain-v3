// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingDataImpl _$$BookingDataImplFromJson(Map<String, dynamic> json) =>
    _$BookingDataImpl(
      doctorId: json['doctorId'] as String?,
      facilityId: json['facilityId'] as String?,
      serviceId: json['serviceId'] as String?,
      time: json['time'] as String?,
      source: json['source'] as String?,
      locationId: json['locationId'],
      patient: json['patient'] == null
          ? null
          : Patient.fromJson(json['patient'] as Map<String, dynamic>),
      insurance: json['insurance'] == null
          ? null
          : Insurance.fromJson(json['insurance'] as Map<String, dynamic>),
      telemedicineUrl: json['telemedicineUrl'] as String?,
    );

Map<String, dynamic> _$$BookingDataImplToJson(_$BookingDataImpl instance) =>
    <String, dynamic>{
      'doctorId': instance.doctorId,
      'facilityId': instance.facilityId,
      'serviceId': instance.serviceId,
      'time': instance.time,
      'source': instance.source,
      'locationId': instance.locationId,
      'patient': instance.patient,
      'insurance': instance.insurance,
      'telemedicineUrl': instance.telemedicineUrl,
    };
