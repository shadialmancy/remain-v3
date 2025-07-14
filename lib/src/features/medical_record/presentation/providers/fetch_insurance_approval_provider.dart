import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/medical_reports_repository.dart';
part 'fetch_insurance_approval_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class FetchInsurancApprovaleService extends _$FetchInsurancApprovaleService {
  @override
  FutureOr<PatientApprovalEntity?> build() async {
    try {
      String patientId = '';
      String patientIdNum = '';
      final patientData = ref.read(authUiServiceProvider).value;
      if (patientData != null) {
        patientId = patientData.id.toString();
        patientIdNum = patientData.fileNum.toString();
      }
      final patientInsurancesApprovalEntity = await ref
          .watch(medicalReportsRepositoryProvider.notifier)
          .getPatientApprovals(
              patientId: patientId, patientIdNum: patientIdNum);
      return patientInsurancesApprovalEntity;
    } catch (e, stack) {
      state = AsyncError(
        CustomError('Failed to get insurances approval',
            err: e, stackTrace: stack),
        stack,
      );
    }
    return null;
  }
}
