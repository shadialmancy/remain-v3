import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/models.dart';
import '../../data/models/offers_dto/offers_data.dart';

part 'offers_entity.freezed.dart';
part 'offers_entity.g.dart';

@freezed
class OffersEntity with _$OffersEntity {
  factory OffersEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    num? totalpage,
    List<OfferData>? data,
  }) = _OffersEntity;

  factory OffersEntity.fromJson(Map<String, dynamic> json) =>
      _$OffersEntityFromJson(json);
  factory OffersEntity.generateFakeData({int numOfFakeData = 3}) =>
      OffersEntity(
          data: List.generate(
        numOfFakeData,
        (index) => OfferData(
          programArbName: Faker().randomGenerator.numberOfLength(10),
          programName: Faker().randomGenerator.numberOfLength(10),
          afterDiscount: int.parse(Faker().randomGenerator.numberOfLength(3)),
          beforeDiscount: int.parse(Faker().randomGenerator.numberOfLength(3)),
          discountRate: int.parse(Faker().randomGenerator.numberOfLength(2)),
        ),
      ));
}

extension OffersEntityX on OffersEntity {
  OffersDto toDto() => OffersDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
