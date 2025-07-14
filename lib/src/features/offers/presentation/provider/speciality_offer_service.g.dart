// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality_offer_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$specialityOfferServiceHash() =>
    r'd875f952b8deee54cc6a0fc1e4f603ac3cd7225e';

/// See also [SpecialityOfferService].
@ProviderFor(SpecialityOfferService)
final specialityOfferServiceProvider =
    AsyncNotifierProvider<SpecialityOfferService, SpecialitiesEntity?>.internal(
  SpecialityOfferService.new,
  name: r'specialityOfferServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$specialityOfferServiceHash,
  dependencies: <ProviderOrFamily>[bookingRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    bookingRepositoryProvider,
    ...?bookingRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$SpecialityOfferService = AsyncNotifier<SpecialitiesEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
