// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: provider_dependencies

import 'package:flutter/material.dart';
import 'package:remain/src/features/payments/presentation/providers/payments_service.dart';
import 'package:remain/src/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../data/models/models.dart';
import '../../domain/entities/entities.dart';
part 'recharge_balance_wallet_provider.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [PaymentService, AuthUiService],
)
class RechargeBalanceWalletService extends _$RechargeBalanceWalletService {
  @override
  FutureOr<void> build() {}

  bool? _paymentStatus;
  bool? getPaymentStatus() => _paymentStatus;
  void setPaymentStatus(bool? value) {
    _paymentStatus = value;
  }

  String? _paymentRepId;
  String? getPaymentRepId() => _paymentRepId;
  void setPaymentRepId(String? value) {
    _paymentRepId = value;
  }

  int? _currentIndexSelected;
  int? getCurrentIndexSelected() => _currentIndexSelected;
  void setCurrentIndexSelected(int? value) {
    _currentIndexSelected = value;
    ref.notifyListeners();
  }

  // ignore: avoid_public_notifier_properties
  TextEditingController amountController = TextEditingController();
  TextEditingController getAmountController() => amountController;
  void setAmountController(TextEditingController value) {
    amountController = value;
    ref.notifyListeners();
  }

  RechargeWalletBalanceResponseEntity? _rechargeWalletBalanceResponseEntity;
  RechargeWalletBalanceResponseEntity?
      getrechargeWalletBalanceResponseEntity() =>
          _rechargeWalletBalanceResponseEntity;
  String? _amount;
  String? getAmount() => _amount;
  void setAmount(String? value) {
    _amount = value;
    state = const AsyncValue.data(null);
  }

  Future<bool> rechargeWalletBalance({String? bookingId}) async {
    try {
      state = const AsyncLoading();
      final paymentService = ref.watch(paymentServiceProvider.notifier);
      final paitentID = ref.read(authUiServiceProvider).value?.id.toString();
      bool isInsurance =
          ref.read(authUiServiceProvider).value?.isInsurance ?? false;
      final walletService = ref.read(walletRepositoryProvider.notifier);
      await paymentService.calcPaymentWithVat(num.parse(_amount ?? ''));
      final balanceModel = RechargeWalletBalanceBody(
        amount: paymentService
            .getCalculatePaymentResponseEntity()
            ?.data
            ?.total
            .toString(),
        patientId: paitentID,
        status: _paymentStatus,
        isCash: !isInsurance,
        bookingId: bookingId ?? '',
        paymentRepId: _paymentRepId ?? '',
        vatAmount: paymentService
            .getCalculatePaymentResponseEntity()
            ?.data
            ?.vat
            .toString(),
        programId: '',
        comment: '',
        programVerId: '',
      );
      logger.i('balanceModel: $balanceModel');
      _rechargeWalletBalanceResponseEntity =
          await walletService.rechargeWalletBalance(balanceModel: balanceModel);
      state = const AsyncValue.data(null);

      return _rechargeWalletBalanceResponseEntity?.code == 200;
    } catch (e, stack) {
      state = const AsyncValue.data(null);

      throw CustomError('Failed to recharge the balance',
          err: e, stackTrace: stack);
    }
  }

  //   CalculatePaymentResponseEntity? _calculatePaymentResponseEntity;
  // CalculatePaymentResponseEntity? getcalculatePaymentResponseEntity() =>
  //     _calculatePaymentResponseEntity;

  // Future<CalculatePaymentResponseEntity?> calcPaymentWithVat() async {
  //   try {
  //     final patientID = ref
  //         .watch(authUiServiceProvider)
  //         .value
  //         ?.id
  //         .toString();
  //     print(_amount);
  //     state = const AsyncLoading();
  //     final paymentService = ref.read(paymentsRepositoryProvider.notifier);
  //     _calculatePaymentResponseEntity = await paymentService.calcPaymentWithVat(
  //         amount: _amount, patientID: patientID);
  //     state = const AsyncData(null);

  //     return _calculatePaymentResponseEntity;
  //   } catch (e, stack) {
  //     state = const AsyncData(null);

  //     throw CustomError('Failed to calculate payment',
  //         err: e, stackTrace: stack);
  //   }
  // }

  void reset() {
    _rechargeWalletBalanceResponseEntity = null;
    _amount = null;
    _paymentRepId = null;
    _paymentStatus = null;
  }
}
