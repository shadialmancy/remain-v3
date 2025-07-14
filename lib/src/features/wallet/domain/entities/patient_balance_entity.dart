import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/patient_balance_dto/patient_balance_dto.dart';
import '../../data/models/patient_balance_dto/wallet_data.dart';
part 'patient_balance_entity.freezed.dart';
part 'patient_balance_entity.g.dart';

@freezed
class PatientBalanceEntity with _$PatientBalanceEntity {
  const PatientBalanceEntity._();
  factory PatientBalanceEntity({
    String? requestId,
    num? code,
    String? errorMessage,
    List<WalletData>? walletData,
  }) = _PatientBalanceEntity;
  factory PatientBalanceEntity.fromJson(Map<String, dynamic> json) =>
      _$PatientBalanceEntityFromJson(json);
}

extension PatientBalanceEntityX on PatientBalanceEntity {
  PatientBalanceDto toDto() => PatientBalanceDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        walletData: walletData,
      );
}
