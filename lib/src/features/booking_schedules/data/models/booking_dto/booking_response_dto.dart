// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/booking_response_entity.dart';
import 'booking_data.dart';

part 'booking_response_dto.freezed.dart';
part 'booking_response_dto.g.dart';

@freezed
class BookingResponseDto with _$BookingResponseDto {
  factory BookingResponseDto({
    String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    @JsonKey(name: 'Data') BookingData? data,
  }) = _BookingResponseDto;

  factory BookingResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BookingResponseDtoFromJson(json);
}

extension BookingResponseDtoX on BookingResponseDto {
  BookingResponseEntity toEntity() => BookingResponseEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
