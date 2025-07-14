// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/patient_balance_entity.dart';
import 'wallet_data.dart';
part 'patient_balance_dto.freezed.dart';
part 'patient_balance_dto.g.dart';

@freezed
class PatientBalanceDto with _$PatientBalanceDto {
  factory PatientBalanceDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    @JsonKey(name: 'data') List<WalletData>? walletData,
  }) = _PatientBalanceDto;

  factory PatientBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$PatientBalanceDtoFromJson(json);
}

extension PatientBalanceDtoX on PatientBalanceDto {
  PatientBalanceEntity toEntity() => PatientBalanceEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        walletData: walletData,
      );
}
