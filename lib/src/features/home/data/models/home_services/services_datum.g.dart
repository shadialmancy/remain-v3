// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServicesDatumImpl _$$ServicesDatumImplFromJson(Map<String, dynamic> json) =>
    _$ServicesDatumImpl(
      serviceGroupName: json['serviceGroupName'] as String?,
      serviceGroupNameEn: json['serviceGroupNameEN'] as String?,
      serviceCount: (json['service_Count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ServicesDatumImplToJson(_$ServicesDatumImpl instance) =>
    <String, dynamic>{
      'serviceGroupName': instance.serviceGroupName,
      'serviceGroupNameEN': instance.serviceGroupNameEn,
      'service_Count': instance.serviceCount,
    };
