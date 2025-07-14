// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_details_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookingDetailsServiceHash() =>
    r'145beee91d4f7367e02376f47fdd14ad4a267b8c';

/// See also [BookingDetailsService].
@ProviderFor(BookingDetailsService)
final bookingDetailsServiceProvider =
    AsyncNotifierProvider<BookingDetailsService, void>.internal(
  BookingDetailsService.new,
  name: r'bookingDetailsServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bookingDetailsServiceHash,
  dependencies: <ProviderOrFamily>{
    doctorServiceProvider,
    selectedAppointmentServiceProvider,
    bookingRepositoryProvider,
    scheduleServiceProvider
  },
  allTransitiveDependencies: <ProviderOrFamily>{
    doctorServiceProvider,
    ...?doctorServiceProvider.allTransitiveDependencies,
    selectedAppointmentServiceProvider,
    ...?selectedAppointmentServiceProvider.allTransitiveDependencies,
    bookingRepositoryProvider,
    ...?bookingRepositoryProvider.allTransitiveDependencies,
    scheduleServiceProvider,
    ...?scheduleServiceProvider.allTransitiveDependencies
  },
);

typedef _$BookingDetailsService = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
