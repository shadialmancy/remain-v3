import 'package:intl/intl.dart';
import 'package:remain/src/features/medical_record/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../domain/repositories/medical_reports_repository.dart';
import 'test_result_tabbar_provider.dart';
part 'fetch_ray_result_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class FetchRayResultService extends _$FetchRayResultService {
  @override
  FutureOr<PatientLabResultsEntity?> build() async {
    String fromDate =
        DateFormat('yyyy-MM-dd', AppStrings.en).format(DateTime(2024, 1, 1));
    String toDate =
        DateFormat('yyyy-MM-dd', AppStrings.en).format(DateTime.now());
    try {
      String? patientId;
      final patientData = ref.read(testResultTabbarServiceProvider.notifier);

      patientId = patientData.getPatientId();
      if (patientId?.isEmpty ?? true) {
        final patientInfo = ref.read(authUiServiceProvider).value;
        if (patientInfo == null) {
          return null;
        }
        patientId = patientInfo.id.toString();
      }
      final patientXRayResultsEntity = await ref
          .read(medicalReportsRepositoryProvider.notifier)
          .getXRayResults(patientId ?? '', fromDate, toDate);
      return patientXRayResultsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get xray results',
          err: e, stackTrace: stack);
    }
  }
}
