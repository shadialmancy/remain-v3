// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reschedule_booking_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rescheduleBookingServiceHash() =>
    r'51ee450e5ba055c95af6df1c9622d9cef446c897';

/// See also [RescheduleBookingService].
@ProviderFor(RescheduleBookingService)
final rescheduleBookingServiceProvider = AsyncNotifierProvider<
    RescheduleBookingService, PatientBookingInfo?>.internal(
  RescheduleBookingService.new,
  name: r'rescheduleBookingServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$rescheduleBookingServiceHash,
  dependencies: <ProviderOrFamily>{
    selectedAppointmentServiceProvider,
    bookingRepositoryProvider,
    doctorServiceProvider,
    scheduleServiceProvider
  },
  allTransitiveDependencies: <ProviderOrFamily>{
    selectedAppointmentServiceProvider,
    ...?selectedAppointmentServiceProvider.allTransitiveDependencies,
    bookingRepositoryProvider,
    ...?bookingRepositoryProvider.allTransitiveDependencies,
    doctorServiceProvider,
    ...?doctorServiceProvider.allTransitiveDependencies,
    scheduleServiceProvider,
    ...?scheduleServiceProvider.allTransitiveDependencies
  },
);

typedef _$RescheduleBookingService = AsyncNotifier<PatientBookingInfo?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
