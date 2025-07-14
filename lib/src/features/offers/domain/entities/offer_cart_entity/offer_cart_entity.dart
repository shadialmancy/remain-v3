import 'package:freezed_annotation/freezed_annotation.dart';

import 'offer_cart_item.dart';

part 'offer_cart_entity.freezed.dart';
part 'offer_cart_entity.g.dart';

@freezed
class OfferCartEntity with _$OfferCartEntity {
  factory OfferCartEntity({
    @Default([]) List<OfferCartItem> data,
  }) = _OfferCartEntity;

  factory OfferCartEntity.fromJson(Map<String, dynamic> json) =>
      _$OfferCartEntityFromJson(json);
}
