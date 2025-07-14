// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingResponseDtoImpl _$$BookingResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseDtoImpl(
      requestId: json['requestId'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      data: json['Data'] == null
          ? null
          : BookingData.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingResponseDtoImplToJson(
        _$BookingResponseDtoImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'Data': instance.data,
    };
