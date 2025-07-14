import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/patient_balance_dto/patient_balance_dto.dart';
import '../models/patient_payment_transactions_dto/patient_payment_transactions_dto.dart';
import '../models/recharge_wallet_balance_body/recharge_wallet_balance_body.dart';
import '../models/recharge_wallet_balance_response_dto/recharge_wallet_balance_response_dto.dart';

abstract class WalletSource {
  Future<RechargeWalletBalanceResponseDto> rechargeWalletBalance(
      {RechargeWalletBalanceBody? balanceModel});
  Future<PatientPaymentTransactionsDto> getAllPaymentTransactions({
    String? patientID,
    String? fromDate,
    String? toDate,
  });
  Future<PatientBalanceDto?> checkPatientBalance(
      String patientId, String patientIdNum);
}

class WalletSourceImpl implements WalletSource {
  @override
  Future<RechargeWalletBalanceResponseDto> rechargeWalletBalance(
      {RechargeWalletBalanceBody? balanceModel}) async {
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.postRechargeBalanceUrl,
            data: balanceModel?.toJson(),
          );
      if (response.statusCode == 200) {
        return RechargeWalletBalanceResponseDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage.toString());
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<PatientPaymentTransactionsDto> getAllPaymentTransactions({
    String? patientID,
    String? fromDate,
    String? toDate,
  }) async {
    try {
      final response = await BaseDioClient()
          .dio
          .get(AppConstants.getAllPaymentsUrl, queryParameters: {
        AppStrings.patientId: patientID,
        TransactionTypeStrings.fromDate: fromDate,
        TransactionTypeStrings.toDate: toDate,
      });
      if (response.statusCode == 200) {
        return PatientPaymentTransactionsDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage.toString());
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<PatientBalanceDto?> checkPatientBalance(
      String patientId, String patientIdNum) async {
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.checkBalanceApiUrl,
            data: {
              AppStrings.patientId: patientId,
              AppStrings.patientIdNum: patientIdNum,
            },
            options: Options(followRedirects: false, headers: {
              HttpHeaders.contentTypeHeader: 'application/json',
            }),
          );
      if (response.statusCode == 200) {
        return PatientBalanceDto.fromJson(response.data);
      } else {
        throw CustomError(
            response.statusMessage ?? 'Error in checkPatientBalance');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
