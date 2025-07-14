// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_appointment_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedAppointmentServiceHash() =>
    r'e0038516d862827242fe340340e11f0f7177074f';

/// See also [SelectedAppointmentService].
@ProviderFor(SelectedAppointmentService)
final selectedAppointmentServiceProvider =
    AsyncNotifierProvider<SelectedAppointmentService, List<AppTime>?>.internal(
  SelectedAppointmentService.new,
  name: r'selectedAppointmentServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedAppointmentServiceHash,
  dependencies: <ProviderOrFamily>[
    doctorServiceProvider,
    bookingRepositoryProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    doctorServiceProvider,
    ...?doctorServiceProvider.allTransitiveDependencies,
    bookingRepositoryProvider,
    ...?bookingRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$SelectedAppointmentService = AsyncNotifier<List<AppTime>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
