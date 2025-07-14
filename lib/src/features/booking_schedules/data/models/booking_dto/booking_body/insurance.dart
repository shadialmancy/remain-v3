// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'insurance.freezed.dart';
part 'insurance.g.dart';

@freezed
class Insurance with _$Insurance {
  factory Insurance({
    @JsonKey(name: 'payer_id') String? payerId,
    @JsonKey(name: 'plan_id') String? planId,
    @JsonKey(name: 'card_number') String? cardNumber,
    @JsonKey(name: 'expiry_date') String? expiryDate,
  }) = _Insurance;

  //make random instance
  factory Insurance.random() => Insurance(
        payerId: '',
        planId: '',
        cardNumber: '',
        expiryDate: '',
      );

  factory Insurance.fromJson(Map<String, dynamic> json) =>
      _$InsuranceFromJson(json);
}
