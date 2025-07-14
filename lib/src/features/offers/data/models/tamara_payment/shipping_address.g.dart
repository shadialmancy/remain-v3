// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingAddressImpl _$$ShippingAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingAddressImpl(
      city: json['city'] as String?,
      countryCode: json['country_code'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      line1: json['line1'] as String?,
      line2: json['line2'] as String?,
      phoneNumber: json['phone_number'] as String?,
      region: json['region'] as String?,
    );

Map<String, dynamic> _$$ShippingAddressImplToJson(
        _$ShippingAddressImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country_code': instance.countryCode,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'line1': instance.line1,
      'line2': instance.line2,
      'phone_number': instance.phoneNumber,
      'region': instance.region,
    };
