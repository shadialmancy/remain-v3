// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/post_payment_response_entity.dart';

part 'post_payments_response_dto.freezed.dart';
part 'post_payments_response_dto.g.dart';

@freezed
class PostPaymentsResponseDto with _$PostPaymentsResponseDto {
  factory PostPaymentsResponseDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    String? message,
  }) = _PostPaymentsResponseDto;

  factory PostPaymentsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PostPaymentsResponseDtoFromJson(json);
}

extension PostPaymentsResponseDtoX on PostPaymentsResponseDto {
  PostPaymentsResponseEntity toEntity() {
    return PostPaymentsResponseEntity(
      requestId: requestId,
      code: code,
      message: message,
    );
  }
}
