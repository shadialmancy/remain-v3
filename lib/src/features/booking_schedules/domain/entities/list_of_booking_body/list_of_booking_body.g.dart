// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_booking_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListOfBookingBodyImpl _$$ListOfBookingBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$ListOfBookingBodyImpl(
      data: json['Data'] == null
          ? null
          : BookingDatum.fromJson(json['Data'] as Map<String, dynamic>),
      programData: (json['ProgramData'] as List<dynamic>?)
          ?.map((e) => ProgramData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListOfBookingBodyImplToJson(
        _$ListOfBookingBodyImpl instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'ProgramData': instance.programData,
    };
