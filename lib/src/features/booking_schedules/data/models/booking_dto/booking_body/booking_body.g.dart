// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingBodyImpl _$$BookingBodyImplFromJson(Map<String, dynamic> json) =>
    _$BookingBodyImpl(
      doctorid: json['doctorid'] as String?,
      facilityId: json['facilityID'] as String?,
      serviceId: json['serviceID'] as String?,
      time: json['time'] as String?,
      source: json['source'] as String?,
      telemedicineUrl: json['telemedicine_url'] as String?,
      patient: json['patient'] == null
          ? null
          : Patient.fromJson(json['patient'] as Map<String, dynamic>),
      insurance: json['insurance'] == null
          ? null
          : Insurance.fromJson(json['insurance'] as Map<String, dynamic>),
      locationId: json['LocationID'] as num?,
    );

Map<String, dynamic> _$$BookingBodyImplToJson(_$BookingBodyImpl instance) =>
    <String, dynamic>{
      'doctorid': instance.doctorid,
      'facilityID': instance.facilityId,
      'serviceID': instance.serviceId,
      'time': instance.time,
      'source': instance.source,
      'telemedicine_url': instance.telemedicineUrl,
      'patient': instance.patient,
      'insurance': instance.insurance,
      'LocationID': instance.locationId,
    };
