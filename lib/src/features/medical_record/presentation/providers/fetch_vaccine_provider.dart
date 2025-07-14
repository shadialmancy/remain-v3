import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../domain/entities/prescription_entity/patient_prescription_entity.dart';
import '../../domain/repositories/medical_reports_repository.dart';
part 'fetch_vaccine_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class FetchVaccineService extends _$FetchVaccineService {
  @override
  FutureOr<PatientPrescriptionEntity?> build() async {
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
      final patientPrescriptionEntity = await ref
          .read(medicalReportsRepositoryProvider.notifier)
          .getPatientPrescription(
              patientId: patientId, fromDate: fromDate, toDate: toDate);
      return patientPrescriptionEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get prescription',
          err: e, stackTrace: stack);
    }
  }
}
