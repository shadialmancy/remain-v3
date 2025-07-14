// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_services_prov.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeServicesProvHash() => r'e87b7a780281db79ddf41b06067716f2ff026758';

/// See also [HomeServicesProv].
@ProviderFor(HomeServicesProv)
final homeServicesProvProvider =
    AsyncNotifierProvider<HomeServicesProv, HomeServicesEntity?>.internal(
  HomeServicesProv.new,
  name: r'homeServicesProvProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeServicesProvHash,
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

typedef _$HomeServicesProv = AsyncNotifier<HomeServicesEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
