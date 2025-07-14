// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/post_payments_response_dto.dart';

part 'post_payment_response_entity.freezed.dart';
part 'post_payment_response_entity.g.dart';

@freezed
class PostPaymentsResponseEntity with _$PostPaymentsResponseEntity {
  factory PostPaymentsResponseEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    String? message,
  }) = _PostPaymentsResponseEntity;

  factory PostPaymentsResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PostPaymentsResponseEntityFromJson(json);
}

extension PostPaymentsResponseEntityX on PostPaymentsResponseEntity {
  PostPaymentsResponseDto toEntity() {
    return PostPaymentsResponseDto(
      requestId: requestId,
      code: code,
      message: message,
    );
  }
}
