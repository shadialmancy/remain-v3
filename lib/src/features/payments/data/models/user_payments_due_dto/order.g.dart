// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      servicePrice: (json['servicePrice'] as num?)?.toInt(),
      serviceName: json['serviceName'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      totalPrice: json['totalPrice'] as num?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'servicePrice': instance.servicePrice,
      'serviceName': instance.serviceName,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
    };
