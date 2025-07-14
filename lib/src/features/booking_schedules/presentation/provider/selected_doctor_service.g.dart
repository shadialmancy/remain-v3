// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_doctor_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedDoctorServiceHash() =>
    r'28209f4ff4ccb4df414bad447c9382960c89d17d';

/// See also [SelectedDoctorService].
@ProviderFor(SelectedDoctorService)
final selectedDoctorServiceProvider =
    AsyncNotifierProvider<SelectedDoctorService, DoctorData?>.internal(
  SelectedDoctorService.new,
  name: r'selectedDoctorServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedDoctorServiceHash,
  dependencies: <ProviderOrFamily>[doctorServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    doctorServiceProvider,
    ...?doctorServiceProvider.allTransitiveDependencies
  },
);

typedef _$SelectedDoctorService = AsyncNotifier<DoctorData?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
