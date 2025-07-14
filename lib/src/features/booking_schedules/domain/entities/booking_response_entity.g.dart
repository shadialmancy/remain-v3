// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingResponseEntityImpl _$$BookingResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseEntityImpl(
      requestId: json['requestId'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: json['Data'] == null
          ? null
          : BookingData.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingResponseEntityImplToJson(
        _$BookingResponseEntityImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'Data': instance.data,
    };
