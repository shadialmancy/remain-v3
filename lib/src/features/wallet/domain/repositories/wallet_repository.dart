import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../data/models/recharge_wallet_balance_body/recharge_wallet_balance_body.dart';
import '../../data/repositories_impl/wallet_repository_impl.dart';
import '../entities/entities.dart';
import '../entities/patient_balance_entity.dart';
part 'wallet_repository.g.dart';

@Riverpod(keepAlive: true)
class WalletRepository extends _$WalletRepository {
  @override
  FutureOr<void> build() {}

  final WalletRepositoryRepositoryImpl _walletRepositoryImpl =
      WalletRepositoryRepositoryImpl();

  RechargeWalletBalanceResponseEntity? _rechargeWalletBalanceResponseEntity;
  RechargeWalletBalanceResponseEntity?
      getRechargeWalletBalanceResponseEntity() =>
          _rechargeWalletBalanceResponseEntity;

  Future<RechargeWalletBalanceResponseEntity?> rechargeWalletBalance(
      {RechargeWalletBalanceBody? balanceModel}) async {
    try {
      _rechargeWalletBalanceResponseEntity = await _walletRepositoryImpl
          .rechargeWalletBalance(balanceModel: balanceModel);
      return _rechargeWalletBalanceResponseEntity;
    } catch (e, stack) {
      throw CustomError('Failed to recharge the balance',
          err: e, stackTrace: stack);
    }
  }

  PatientPaymentTransactionsEntity? _patientPaymentTransactionsEntity;
  PatientPaymentTransactionsEntity? getPatientPaymentTransactionsEntity() =>
      _patientPaymentTransactionsEntity;

  Future<PatientPaymentTransactionsEntity?> getAllPaymentTransactions({
    String? patientID,
    String? fromDate,
    String? toDate,
  }) async {
    try {
      _patientPaymentTransactionsEntity =
          await _walletRepositoryImpl.getAllPaymentTransactions(
              patientID: patientID, fromDate: fromDate, toDate: toDate);
      return _patientPaymentTransactionsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to payment transactions',
          err: e, stackTrace: stack);
    }
  }

  Future<PatientBalanceEntity?> checkPatientBalance(
      {String? patientId, String? patientIdNum}) async {
    try {
      return await _walletRepositoryImpl.checkPatientBalance(
          patientId ?? '', patientIdNum ?? '');
    } catch (e, stack) {
      throw CustomError('Failed to check balance', err: e, stackTrace: stack);
    }
  }
}
