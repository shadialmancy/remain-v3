// ignore_for_file: provider_dependencies

import 'package:remain/src/features/home/domain/entity/home_vital_signs_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../authentication/domain/repositories/authentication_repository.dart';
import '../../authentication/presentation/provider/auth_ui_service.dart';

part 'home_user_vitals_service.g.dart';

@Riverpod(
    keepAlive: true, dependencies: [AuthUiService, AuthenticationRepository])
class HomeUserVitalsService extends _$HomeUserVitalsService {
  @override
  FutureOr<HomeVitalSignsEntity?> build() async {
    final authState = ref.watch(authUiServiceProvider);

    return await authState.when(
      data: (patientData) async {
        if (patientData == null) return null;

        final userVitalsData = await ref
            .read(authenticationRepositoryProvider.notifier)
            .getUserHomeVitalSigns(id: patientData.id ?? 0);

        return userVitalsData;
      },
      loading: () => null,
      error: (err, stack) => null,
    );
  }
}
