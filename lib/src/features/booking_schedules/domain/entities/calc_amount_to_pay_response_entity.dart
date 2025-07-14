// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/calc_amount_to_pay_response/amount_data.dart';
import '../../data/models/calc_amount_to_pay_response/calc_amount_to_pay_response_dto.dart';
part 'calc_amount_to_pay_response_entity.freezed.dart';
part 'calc_amount_to_pay_response_entity.g.dart';

@freezed
class CalcAmountToPayResponseEntity with _$CalcAmountToPayResponseEntity {
  factory CalcAmountToPayResponseEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    AmountData? data,
  }) = _CalcAmountToPayResponseEntity;

  factory CalcAmountToPayResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CalcAmountToPayResponseEntityFromJson(json);
}

extension CalcAmountToPayResponseEntityX on CalcAmountToPayResponseEntity {
  CalcAmountToPayResponseDto toDTO() => CalcAmountToPayResponseDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
