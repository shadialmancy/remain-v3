import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address.freezed.dart';
part 'shipping_address.g.dart';

@freezed
class ShippingAddress with _$ShippingAddress {
  factory ShippingAddress({
    String? city,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? line1,
    String? line2,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? region,
  }) = _ShippingAddress;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
}
