import 'package:intl/intl.dart';
import 'package:remain/src/features/medical_record/domain/entities/entities.dart';
import 'package:remain/src/features/medical_record/presentation/providers/test_result_tabbar_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../domain/repositories/medical_reports_repository.dart';
part 'fetch_lab_result_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class FetchLabResultService extends _$FetchLabResultService {
  @override
  FutureOr<PatientLabResultsEntity?> build() async {
    String fromDate =
        DateFormat('yyyy-MM-dd', AppStrings.en).format(DateTime(2024, 1, 1));
    String toDate =
        DateFormat('yyyy-MM-dd', AppStrings.en).format(DateTime.now());
    String? patientId;

    try {
      final patientData = ref.read(testResultTabbarServiceProvider.notifier);
      patientId = patientData.getPatientId();
      if (patientId?.isEmpty ?? true) {
        final patientInfo = ref.read(authUiServiceProvider).value;
        if (patientInfo == null) {
          return null;
        }
        patientId = patientInfo.id.toString();
      }
      final patientLabResultsEntity = await ref
          .read(medicalReportsRepositoryProvider.notifier)
          .getLabResults(patientId ?? '', fromDate, toDate);
      return patientLabResultsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get lab results', err: e, stackTrace: stack);
    }
  }
}
