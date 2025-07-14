// ignore_for_file: provider_dependencies

import 'package:intl/intl.dart';
import 'package:remain/src/features/wallet/domain/entities/entities.dart';
import 'package:remain/src/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
part 'fetch_transaction_wallet_provider.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [AuthUiService],
)
class FetchTransactionWalletService extends _$FetchTransactionWalletService {
  @override
  FutureOr<PatientPaymentTransactionsEntity?> build() async {
    try {
      state = const AsyncValue.loading();
      String toDate = DateFormat('yyyy-MM-dd', AppStrings.en.toLowerCase())
          .format(DateTime.now());
      String fromDate = '2024-1-1';
      final patientID = ref.watch(authUiServiceProvider).value?.id.toString();
      final service = await ref
          .read(walletRepositoryProvider.notifier)
          .getAllPaymentTransactions(
              fromDate: fromDate, patientID: patientID, toDate: toDate);
      return service;
    } catch (e, stack) {
      throw CustomError('Failed to payment transactions',
          err: e, stackTrace: stack);
    }
  }
}
