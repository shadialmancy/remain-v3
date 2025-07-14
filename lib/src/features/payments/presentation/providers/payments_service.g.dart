// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paymentServiceHash() => r'da7b6bc30c087f8261c64d5fe359109d53d26baf';

/// See also [PaymentService].
@ProviderFor(PaymentService)
final paymentServiceProvider =
    AsyncNotifierProvider<PaymentService, void>.internal(
  PaymentService.new,
  name: r'paymentServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paymentServiceHash,
  dependencies: <ProviderOrFamily>[
    bookingDetailsServiceProvider,
    paymentsRepositoryProvider,
    authUiServiceProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    bookingDetailsServiceProvider,
    ...?bookingDetailsServiceProvider.allTransitiveDependencies,
    paymentsRepositoryProvider,
    ...?paymentsRepositoryProvider.allTransitiveDependencies,
    authUiServiceProvider,
    ...?authUiServiceProvider.allTransitiveDependencies
  },
);

typedef _$PaymentService = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
