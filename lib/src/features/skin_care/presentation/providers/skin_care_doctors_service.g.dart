// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skin_care_doctors_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$skinCareDoctorsServiceHash() =>
    r'b480f5dbf66c818fd584c1b60668daed8e6d1c86';

/// See also [SkinCareDoctorsService].
@ProviderFor(SkinCareDoctorsService)
final skinCareDoctorsServiceProvider =
    AsyncNotifierProvider<SkinCareDoctorsService, DoctorsEntity?>.internal(
  SkinCareDoctorsService.new,
  name: r'skinCareDoctorsServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$skinCareDoctorsServiceHash,
  dependencies: <ProviderOrFamily>[
    bookingRepositoryProvider,
    specialityServiceProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    bookingRepositoryProvider,
    ...?bookingRepositoryProvider.allTransitiveDependencies,
    specialityServiceProvider,
    ...?specialityServiceProvider.allTransitiveDependencies
  },
);

typedef _$SkinCareDoctorsService = AsyncNotifier<DoctorsEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
