// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:remain/src/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'check_patient_balance_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class CheckPatientBalanceService extends _$CheckPatientBalanceService {
  @override
  FutureOr<int> build() async {
    try {
      // state = const AsyncLoading();
      final _patientInfo = ref.read(authUiServiceProvider).value;
      if (_patientInfo != null) {
        final _patientBalance = await ref
            .watch(walletRepositoryProvider.notifier)
            .checkPatientBalance(
              patientId: _patientInfo.id.toString(),
              patientIdNum: _patientInfo.fileNum.toString(),
            );
        if (_patientBalance?.code == 200) {
          return _patientBalance?.walletData?[0].balance?.abs().toInt() ?? 0;
        }
      } else {
        return 0;
      }
      // state = AsyncData(_patientInfo);
      return 0;
    } catch (e) {
      throw e.toString();
    }
  }
}
