// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vital_signs_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VitalSignsDatumImpl _$$VitalSignsDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$VitalSignsDatumImpl(
      lasCheckDate: json['lasCheckDate'] as String?,
      height: (json['height'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      bmi: (json['bmi'] as num?)?.toDouble(),
      oxygenSaturation: (json['oxygenSaturation'] as num?)?.toInt(),
      bloodPressure: json['bloodPressure'] as String?,
      pulse: (json['pulse'] as num?)?.toInt(),
      temperature: (json['temperature'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VitalSignsDatumImplToJson(
        _$VitalSignsDatumImpl instance) =>
    <String, dynamic>{
      'lasCheckDate': instance.lasCheckDate,
      'height': instance.height,
      'weight': instance.weight,
      'bmi': instance.bmi,
      'oxygenSaturation': instance.oxygenSaturation,
      'bloodPressure': instance.bloodPressure,
      'pulse': instance.pulse,
      'temperature': instance.temperature,
    };
