// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabby_payment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tabbyPaymentServiceHash() =>
    r'330d7160833d8783a1a47f2481e1036d66b86757';

/// See also [TabbyPaymentService].
@ProviderFor(TabbyPaymentService)
final tabbyPaymentServiceProvider =
    AsyncNotifierProvider<TabbyPaymentService, TabbySession?>.internal(
  TabbyPaymentService.new,
  name: r'tabbyPaymentServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tabbyPaymentServiceHash,
  dependencies: <ProviderOrFamily>[
    cartServiceProvider,
    examinationCartServiceProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    cartServiceProvider,
    ...?cartServiceProvider.allTransitiveDependencies,
    examinationCartServiceProvider,
    ...?examinationCartServiceProvider.allTransitiveDependencies
  },
);

typedef _$TabbyPaymentService = AsyncNotifier<TabbySession?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
