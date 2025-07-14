// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/calc_amount_to_pay_response_entity.dart';
import 'amount_data.dart';

part 'calc_amount_to_pay_response_dto.freezed.dart';
part 'calc_amount_to_pay_response_dto.g.dart';

@freezed
class CalcAmountToPayResponseDto with _$CalcAmountToPayResponseDto {
  factory CalcAmountToPayResponseDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    AmountData? data,
  }) = _CalcAmountToPayResponseDto;

  factory CalcAmountToPayResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CalcAmountToPayResponseDtoFromJson(json);
}

extension CalcAmountToPayResponseDtoX on CalcAmountToPayResponseDto {
  CalcAmountToPayResponseEntity toEntity() => CalcAmountToPayResponseEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
