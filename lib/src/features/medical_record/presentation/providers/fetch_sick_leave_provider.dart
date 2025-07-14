import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/medical_reports_repository.dart';
part 'fetch_sick_leave_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class FetchSickLeaveService extends _$FetchSickLeaveService {
  @override
  FutureOr<SickLeaveEntity?> build() async {
    try {
      String patientId = '';
      String patientMrn = '';
      final patientData = ref.read(authUiServiceProvider).value;
      if (patientData != null) {
        patientId = patientData.id.toString();
        patientMrn = patientData.fileNum.toString();
      }
      final sickLeaveEntity = await ref
          .read(medicalReportsRepositoryProvider.notifier)
          .getSickLeave(
            patientId: patientId,
            patientMrn: patientMrn,
          );
      return sickLeaveEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get sick leave reports',
          err: e, stackTrace: stack);
    }
  }
}
