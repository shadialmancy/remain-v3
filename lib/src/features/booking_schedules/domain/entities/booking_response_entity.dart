// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/booking_dto/booking_data.dart';
import '../../data/models/booking_dto/booking_response_dto.dart';

part 'booking_response_entity.freezed.dart';
part 'booking_response_entity.g.dart';

@freezed
class BookingResponseEntity with _$BookingResponseEntity {
  const BookingResponseEntity._();
  factory BookingResponseEntity({
    String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    @JsonKey(name: 'Data') BookingData? data,
  }) = _BookingResponseEntity;
  factory BookingResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingResponseEntityFromJson(json);
}

extension BookingResponseEntityX on BookingResponseEntity {
  BookingResponseDto toEntity() => BookingResponseDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
