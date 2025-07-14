// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/calculate_payment_response_entity.dart';
import 'payment_with_vat_data.dart';

part 'calculate_payment_response_dto.freezed.dart';
part 'calculate_payment_response_dto.g.dart';

@freezed
class CalculatePaymentResponseDto with _$CalculatePaymentResponseDto {
  factory CalculatePaymentResponseDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    PaymentWithVatData? data,
  }) = _CalculatePaymentResponseDto;

  factory CalculatePaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CalculatePaymentResponseDtoFromJson(json);
}

extension CalculatePaymentResponseDtoX on CalculatePaymentResponseDto {
  CalculatePaymentResponseEntity toEntity() => CalculatePaymentResponseEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
