import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/medical_reports_repository.dart';
part 'fetch_insurance_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class FetchInsuranceService extends _$FetchInsuranceService {
  @override
  FutureOr<PatientInsuranceEntity?> build() async {
    try {
      String patientId = '';
      String patientIdNum = '';
      final patientData = ref.read(authUiServiceProvider).value;
      if (patientData != null) {
        patientId = patientData.id.toString();
        patientIdNum = patientData.fileNum.toString();
      }
      final patientInsuranceEntity = await ref
          .watch(medicalReportsRepositoryProvider.notifier)
          .getPatientInsurances(
              patientId: patientId, patientIdNum: patientIdNum);
      return patientInsuranceEntity;
    } catch (e, stack) {
      state = AsyncError(
        CustomError('Failed to get insurances', err: e, stackTrace: stack),
        stack,
      );
    }
    return null;
  }
}
