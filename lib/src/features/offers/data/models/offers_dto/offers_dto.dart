// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/offers_entity.dart';
import 'offers_data.dart';

part 'offers_dto.freezed.dart';
part 'offers_dto.g.dart';

@freezed
class OffersDto with _$OffersDto {
  factory OffersDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    num? totalpage,
    List<OfferData>? data,
  }) = _OffersDto;

  factory OffersDto.fromJson(Map<String, dynamic> json) =>
      _$OffersDtoFromJson(json);
}

extension OffersDtoX on OffersDto {
  OffersEntity toEntity() => OffersEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
