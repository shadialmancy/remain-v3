// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_data.freezed.dart';
part 'additional_data.g.dart';

@freezed
class AdditionalData with _$AdditionalData {
  factory AdditionalData({
    @JsonKey(name: 'delivery_method') String? deliveryMethod,
    @JsonKey(name: 'pickup_store') String? pickupStore,
    @JsonKey(name: 'store_code') String? storeCode,
    @JsonKey(name: 'vendor_amount') num? vendorAmount,
    @JsonKey(name: 'merchant_settlement_amount') num? merchantSettlementAmount,
    @JsonKey(name: 'vendor_reference_code') String? vendorReferenceCode,
  }) = _AdditionalData;

  factory AdditionalData.fromJson(Map<String, dynamic> json) =>
      _$AdditionalDataFromJson(json);
}
