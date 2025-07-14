// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_data.freezed.dart';
part 'offers_data.g.dart';

@freezed
class OfferData with _$OfferData {
  factory OfferData({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'programID') num? programId,
    @JsonKey(name: 'programVerID') num? programVerId,
    @JsonKey(name: 'programName') String? programName,
    @JsonKey(name: 'programArbName') String? programArbName,
    @JsonKey(name: 'afterDiscount') num? afterDiscount,
    @JsonKey(name: 'beforeDiscount') num? beforeDiscount,
    @JsonKey(name: 'specialtie') String? specialtie,
    @JsonKey(name: 'specialtieID') String? specialtieId,
    @JsonKey(name: 'locationsID') String? locationsId,
    @JsonKey(name: 'locations') String? locations,
    @JsonKey(name: 'discountRate') num? discountRate,
    @JsonKey(name: 'endDate') String? endDate,
    @JsonKey(name: 'timeToEnd') String? timeToEnd,
    @JsonKey(name: 'programImage') String? programImage,
    @JsonKey(name: 'offerdetailsAR') String? offerdetailsAR,
    @JsonKey(name: 'offerdetailsEN') String? offerdetailsEN,
  }) = _OfferData;

  factory OfferData.fromJson(Map<String, dynamic> json) =>
      _$OfferDataFromJson(json);
}
