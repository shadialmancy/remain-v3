// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/calculate_payment_response_dto.dart';
import '../../data/models/payment_with_vat_data.dart';

part 'calculate_payment_response_entity.freezed.dart';
part 'calculate_payment_response_entity.g.dart';

@freezed
class CalculatePaymentResponseEntity with _$CalculatePaymentResponseEntity {
  factory CalculatePaymentResponseEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    PaymentWithVatData? data,
  }) = _CalculatePaymentResponseEntity;

  factory CalculatePaymentResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CalculatePaymentResponseEntityFromJson(json);
}

extension CalculatePaymentResponseEntityX on CalculatePaymentResponseEntity {
  CalculatePaymentResponseDto toDto() => CalculatePaymentResponseDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
