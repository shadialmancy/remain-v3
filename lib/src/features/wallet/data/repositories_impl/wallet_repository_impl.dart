import 'package:remain/src/features/wallet/data/models/models.dart';
import 'package:remain/src/features/wallet/data/models/patient_balance_dto/patient_balance_dto.dart';

import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/entities.dart';
import '../../domain/entities/patient_balance_entity.dart';
import '../datasource/wallet_datasource.dart';

abstract class WalletRepository {
  Future<RechargeWalletBalanceResponseEntity> rechargeWalletBalance(
      {RechargeWalletBalanceBody? balanceModel});
  Future<PatientPaymentTransactionsEntity> getAllPaymentTransactions({
    String? patientID,
    String? fromDate,
    String? toDate,
  });
  Future<PatientBalanceEntity?> checkPatientBalance(
      String patientId, String patientIdNum);
}

class WalletRepositoryRepositoryImpl implements WalletRepository {
  WalletSourceImpl dataSource = WalletSourceImpl();
  @override
  Future<RechargeWalletBalanceResponseEntity> rechargeWalletBalance(
      {RechargeWalletBalanceBody? balanceModel}) async {
    try {
      return await dataSource
          .rechargeWalletBalance(balanceModel: balanceModel)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to recharge the balance',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<PatientPaymentTransactionsEntity> getAllPaymentTransactions({
    String? patientID,
    String? fromDate,
    String? toDate,
  }) async {
    try {
      return await dataSource
          .getAllPaymentTransactions(
              patientID: patientID, fromDate: fromDate, toDate: toDate)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to payment transactions',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<PatientBalanceEntity?> checkPatientBalance(
      String patientId, String patientIdNum) async {
    try {
      return await dataSource
          .checkPatientBalance(patientId, patientIdNum)
          .then((value) => value?.toEntity());
    } catch (e, stack) {
      throw CustomError('Failed to check balance', err: e, stackTrace: stack);
    }
  }
}
