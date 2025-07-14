// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/tamara_checkout_response_entity.dart';

part 'tamara_checkout_response_dto.freezed.dart';
part 'tamara_checkout_response_dto.g.dart';

@freezed
class TamaraCheckoutResponseDto with _$TamaraCheckoutResponseDto {
  factory TamaraCheckoutResponseDto({
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'checkout_id') String? checkoutId,
    @JsonKey(name: 'checkout_url') String? checkoutUrl,
    String? status,
  }) = _TamaraCheckoutResponseDto;

  factory TamaraCheckoutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TamaraCheckoutResponseDtoFromJson(json);
}

extension TamaraCheckoutResponseDtoX on TamaraCheckoutResponseDto {
  TamaraCheckoutResponseEntity toEntity() => TamaraCheckoutResponseEntity(
      checkoutId: checkoutId,
      checkoutUrl: checkoutUrl,
      orderId: orderId,
      status: status);
}
