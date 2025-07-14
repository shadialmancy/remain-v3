// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppTimeImpl _$$AppTimeImplFromJson(Map<String, dynamic> json) =>
    _$AppTimeImpl(
      timeSlot: json['time_slot'] as String?,
      night: json['night'] as bool?,
    );

Map<String, dynamic> _$$AppTimeImplToJson(_$AppTimeImpl instance) =>
    <String, dynamic>{
      'time_slot': instance.timeSlot,
      'night': instance.night,
    };
