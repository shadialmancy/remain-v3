// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsumerImpl _$$ConsumerImplFromJson(Map<String, dynamic> json) =>
    _$ConsumerImpl(
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$ConsumerImplToJson(_$ConsumerImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
    };
