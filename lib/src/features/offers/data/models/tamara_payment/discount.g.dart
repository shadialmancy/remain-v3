// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountImpl _$$DiscountImplFromJson(Map<String, dynamic> json) =>
    _$DiscountImpl(
      name: json['name'] as String?,
      amount: json['amount'] == null
          ? null
          : Amount.fromJson(json['amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscountImplToJson(_$DiscountImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
    };
