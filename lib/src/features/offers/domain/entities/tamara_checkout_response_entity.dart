import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remain/src/features/offers/data/models/models.dart';
part 'tamara_checkout_response_entity.freezed.dart';
part 'tamara_checkout_response_entity.g.dart';

@freezed
class TamaraCheckoutResponseEntity with _$TamaraCheckoutResponseEntity {
  factory TamaraCheckoutResponseEntity({
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'checkout_id') String? checkoutId,
    @JsonKey(name: 'checkout_url') String? checkoutUrl,
    String? status,
  }) = _TamaraCheckoutResponseEntity;

  factory TamaraCheckoutResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$TamaraCheckoutResponseEntityFromJson(json);
}

extension TamaraCheckoutResponseEntityX on TamaraCheckoutResponseEntity {
  TamaraCheckoutResponseDto toDto() => TamaraCheckoutResponseDto(
      checkoutId: checkoutId,
      checkoutUrl: checkoutUrl,
      orderId: orderId,
      status: status);
}
