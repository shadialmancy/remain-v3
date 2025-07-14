import 'package:remain/src/features/wallet/presentation/provider/fetch_transaction_wallet_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/patient_payment_transactions_dto/patient_transactions_data.dart';
part 'search_wallet_provider.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [FetchTransactionWalletService],
)
class SearchWalletService extends _$SearchWalletService {
  @override
  FutureOr<List<PatientTransactionsData?>?> build() {
    return onSearch();
  }

  List<PatientTransactionsData?>? onSearch({String value = ""}) {
    final paymentTransactionEntity =
        ref.watch(fetchTransactionWalletServiceProvider).value;
    List<PatientTransactionsData?>? result = paymentTransactionEntity?.data
        ?.where(
          (element) => element.engName?.contains(value) ?? false,
        )
        .toList();
    state = AsyncValue.data(result);
    return result;
  }
}
