// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tamara_payment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tamaraPaymentServiceHash() =>
    r'cb1e4b7e05ffc5d15e2262affea826cf4cb6da0f';

/// See also [TamaraPaymentService].
@ProviderFor(TamaraPaymentService)
final tamaraPaymentServiceProvider = AsyncNotifierProvider<TamaraPaymentService,
    TamaraCheckoutResponseEntity?>.internal(
  TamaraPaymentService.new,
  name: r'tamaraPaymentServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tamaraPaymentServiceHash,
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

typedef _$TamaraPaymentService = AsyncNotifier<TamaraCheckoutResponseEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
