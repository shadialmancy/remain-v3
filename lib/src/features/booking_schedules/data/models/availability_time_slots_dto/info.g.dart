// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      doctor: json['doctor'] == null
          ? null
          : Doctor.fromJson(json['doctor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'doctor': instance.doctor,
    };
