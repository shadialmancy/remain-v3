import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../../medical_record/domain/entities/entities.dart';
import '../../../medical_record/domain/repositories/medical_reports_repository.dart';
part 'my_bills_service.g.dart';

@Riverpod(
  keepAlive: true,
)
class MyBillsService extends _$MyBillsService {
  @override
  FutureOr<RecordStatementEntity?> build() async {
    String fromDate =
        DateFormat('yyyy-MM-dd', AppStrings.en).format(DateTime(2024, 1, 1));
    String toDate =
        DateFormat('yyyy-MM-dd', AppStrings.en).format(DateTime.now());
    try {
      String patientId = '';
      final patientData = ref.read(authUiServiceProvider).value;
      if (patientData != null) {
        patientId = patientData.id.toString();
      }
      final myBills = await ref
          .read(medicalReportsRepositoryProvider.notifier)
          .getMyBills(patientId: patientId, fromDate: fromDate, toDate: toDate);
      return myBills;
    } catch (e, stack) {
      throw CustomError('Failed to get prescription',
          err: e, stackTrace: stack);
    }
  }
}
