// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialty_fliter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialtyFilterImpl _$$SpecialtyFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialtyFilterImpl(
      gender: (json['gender'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      isOnline: json['isOnline'] as bool?,
    );

Map<String, dynamic> _$$SpecialtyFilterImplToJson(
        _$SpecialtyFilterImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'isOnline': instance.isOnline,
    };
