// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_patient_bookings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllPatientBookingsDTOImpl _$$AllPatientBookingsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AllPatientBookingsDTOImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PatientBookingInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllPatientBookingsDTOImplToJson(
        _$AllPatientBookingsDTOImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'data': instance.data,
    };
