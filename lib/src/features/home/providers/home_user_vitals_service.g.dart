// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_user_vitals_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeUserVitalsServiceHash() =>
    r'33b18edb175a9bff25922754d90e3652a762ef6f';

/// See also [HomeUserVitalsService].
@ProviderFor(HomeUserVitalsService)
final homeUserVitalsServiceProvider = AsyncNotifierProvider<
    HomeUserVitalsService, HomeVitalSignsEntity?>.internal(
  HomeUserVitalsService.new,
  name: r'homeUserVitalsServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeUserVitalsServiceHash,
  dependencies: <ProviderOrFamily>[
    authUiServiceProvider,
    authenticationRepositoryProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    authUiServiceProvider,
    ...?authUiServiceProvider.allTransitiveDependencies,
    authenticationRepositoryProvider,
    ...?authenticationRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$HomeUserVitalsService = AsyncNotifier<HomeVitalSignsEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
