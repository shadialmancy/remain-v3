// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailabilityImpl _$$AvailabilityImplFromJson(Map<String, dynamic> json) =>
    _$AvailabilityImpl(
      dayNameEng: json['day_name_eng'] as String?,
      dayNameArb: json['day_name_arb'] as String?,
      dayNumber: json['day_number'] as String?,
      appTimes: (json['appTimes'] as List<dynamic>?)
          ?.map((e) => AppTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AvailabilityImplToJson(_$AvailabilityImpl instance) =>
    <String, dynamic>{
      'day_name_eng': instance.dayNameEng,
      'day_name_arb': instance.dayNameArb,
      'day_number': instance.dayNumber,
      'appTimes': instance.appTimes,
    };
