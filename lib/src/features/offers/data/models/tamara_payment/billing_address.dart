// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing_address.freezed.dart';
part 'billing_address.g.dart';

@freezed
class BillingAddress with _$BillingAddress {
  factory BillingAddress({
    String? city,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? line1,
    String? line2,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? region,
  }) = _BillingAddress;

  factory BillingAddress.fromJson(Map<String, dynamic> json) =>
      _$BillingAddressFromJson(json);
}
