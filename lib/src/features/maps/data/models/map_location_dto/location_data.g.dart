// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDataImpl _$$LocationDataImplFromJson(Map<String, dynamic> json) =>
    _$LocationDataImpl(
      locationEn: json['locationEN'] as String?,
      locationAr: json['locationAR'] as String?,
      locationAddress: json['locationAddress'] as String?,
      phoneNum: json['phoneNum'] as String?,
      maplat: json['maplat'] as String?,
      maplong: json['maplong'] as String?,
    );

Map<String, dynamic> _$$LocationDataImplToJson(_$LocationDataImpl instance) =>
    <String, dynamic>{
      'locationEN': instance.locationEn,
      'locationAR': instance.locationAr,
      'locationAddress': instance.locationAddress,
      'phoneNum': instance.phoneNum,
      'maplat': instance.maplat,
      'maplong': instance.maplong,
    };
