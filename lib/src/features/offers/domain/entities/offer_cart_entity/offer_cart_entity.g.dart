// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_cart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferCartEntityImpl _$$OfferCartEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OfferCartEntityImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => OfferCartItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OfferCartEntityImplToJson(
        _$OfferCartEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
