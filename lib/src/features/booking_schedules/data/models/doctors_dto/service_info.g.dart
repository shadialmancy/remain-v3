// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceInfoImpl _$$ServiceInfoImplFromJson(Map<String, dynamic> json) =>
    _$ServiceInfoImpl(
      serviceId: json['serviceID'] as num?,
      serviceCode: json['serviceCode'] as String?,
      serviceEngName: json['serviceEngName'] as String?,
      serviceArbName: json['serviceArbName'] as String?,
      servicePrice: json['servicePrice'] as num?,
    );

Map<String, dynamic> _$$ServiceInfoImplToJson(_$ServiceInfoImpl instance) =>
    <String, dynamic>{
      'serviceID': instance.serviceId,
      'serviceCode': instance.serviceCode,
      'serviceEngName': instance.serviceEngName,
      'serviceArbName': instance.serviceArbName,
      'servicePrice': instance.servicePrice,
    };
