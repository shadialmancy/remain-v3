// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingAddressImpl _$$BillingAddressImplFromJson(Map<String, dynamic> json) =>
    _$BillingAddressImpl(
      city: json['city'] as String?,
      countryCode: json['country_code'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      line1: json['line1'] as String?,
      line2: json['line2'] as String?,
      phoneNumber: json['phone_number'] as String?,
      region: json['region'] as String?,
    );

Map<String, dynamic> _$$BillingAddressImplToJson(
        _$BillingAddressImpl instance) =>
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
