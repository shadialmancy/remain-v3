import 'package:intl/intl.dart';
import 'package:remain/src/features/medical_record/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../domain/repositories/medical_reports_repository.dart';
part 'fetch_record_statement_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class FetchRecordStatementService extends _$FetchRecordStatementService {
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
      final recordStatementEntity = await ref
          .read(medicalReportsRepositoryProvider.notifier)
          .getRecordStatements(
              patientId: patientId, fromDate: fromDate, toDate: toDate);
      return recordStatementEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get record statement',
          err: e, stackTrace: stack);
    }
  }
}
