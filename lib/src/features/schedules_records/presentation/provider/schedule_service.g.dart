// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scheduleServiceHash() => r'd2f3f94876be797e4fe38a9a50a47c90e245b52b';

/// See also [ScheduleService].
@ProviderFor(ScheduleService)
final scheduleServiceProvider =
    AsyncNotifierProvider<ScheduleService, AllPatientBookingsEntity?>.internal(
  ScheduleService.new,
  name: r'scheduleServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$scheduleServiceHash,
  dependencies: <ProviderOrFamily>[bookingRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    bookingRepositoryProvider,
    ...?bookingRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$ScheduleService = AsyncNotifier<AllPatientBookingsEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
