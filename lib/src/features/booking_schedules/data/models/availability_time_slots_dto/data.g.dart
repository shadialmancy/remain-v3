// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      availabilities: (json['availabilities'] as List<dynamic>?)
          ?.map((e) => Availability.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'availabilities': instance.availabilities,
    };
