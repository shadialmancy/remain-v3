// ignore_for_file: provider_dependencies

import 'package:remain/src/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:remain/src/features/home/domain/entity/home_services_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../authentication/presentation/provider/auth_ui_service.dart';

part 'home_services_prov.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [AuthUiService, AuthenticationRepository],
)
class HomeServicesProv extends _$HomeServicesProv {
  @override
  FutureOr<HomeServicesEntity?> build() async {
    final authState = ref.watch(authUiServiceProvider);

    return await authState.when(
      data: (patientData) async {
        if (patientData == null) return null;

        final homeServicesData = await ref
            .read(authenticationRepositoryProvider.notifier)
            .getUserHomeServices(id: patientData.id ?? 0);

        return homeServicesData;
      },
      loading: () => null,
      error: (err, stack) => null,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();

    try {
      final authState = ref.read(authUiServiceProvider);

      if (authState.value == null) {
        state = const AsyncValue.data(null);
        return;
      }

      final homeServicesData = await ref
          .read(authenticationRepositoryProvider.notifier)
          .getUserHomeServices(id: authState.value?.id ?? 0);

      state = AsyncValue.data(homeServicesData);
    } catch (e) {
      state = AsyncValue.data(null);
    }
  }
}
