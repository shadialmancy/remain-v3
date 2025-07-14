// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';
import 'patient_transactions_data.dart';

part 'patient_payment_transactions_dto.freezed.dart';
part 'patient_payment_transactions_dto.g.dart';

@freezed
class PatientPaymentTransactionsDto with _$PatientPaymentTransactionsDto {
  factory PatientPaymentTransactionsDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<PatientTransactionsData>? data,
  }) = _PatientPaymentTransactionsDto;

  factory PatientPaymentTransactionsDto.fromJson(Map<String, dynamic> json) =>
      _$PatientPaymentTransactionsDtoFromJson(json);
}

extension PatientPaymentTransactionsDtoX on PatientPaymentTransactionsDto {
  PatientPaymentTransactionsEntity toEntity() =>
      PatientPaymentTransactionsEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
