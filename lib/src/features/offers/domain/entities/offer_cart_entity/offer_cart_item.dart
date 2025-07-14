// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'offer_cart_item.freezed.dart';
part 'offer_cart_item.g.dart';

@HiveType(typeId: 3, adapterName: "OfferCartItemyAdapter")
@freezed
class OfferCartItem with _$OfferCartItem, EquatableMixin {
  OfferCartItem._();
  factory OfferCartItem({
    @HiveField(0) String? code,
    @HiveField(1) num? programId,
    @HiveField(2) num? programVerId,
    @HiveField(3) String? programName,
    @HiveField(4) String? programArbName,
    @HiveField(5) num? afterDiscount,
    @HiveField(6) num? beforeDiscount,
    @HiveField(7) String? specialtie,
    @HiveField(8) String? specialtieId,
    @HiveField(9) String? locationsId,
    @HiveField(10) String? locations,
    @HiveField(11) num? discountRate,
    @HiveField(12) String? programImage,
    @HiveField(13) @Default(0) int quantity,
    @HiveField(14) required DateTime? purchaseDate,
  }) = _OfferCartItem;

  factory OfferCartItem.fromJson(Map<String, dynamic> json) =>
      _$OfferCartItemFromJson(json);
  @override
  List<Object?> get props => [code];
}
