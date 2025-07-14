// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_config_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paymentConfigStateHash() =>
    r'8bb02e833c97bb779c9968952737fc6216c17e67';

/// See also [PaymentConfigState].
@ProviderFor(PaymentConfigState)
final paymentConfigStateProvider =
    AsyncNotifierProvider<PaymentConfigState, PaymentStatus>.internal(
  PaymentConfigState.new,
  name: r'paymentConfigStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paymentConfigStateHash,
  dependencies: <ProviderOrFamily>[
    paymentServiceProvider,
    authUiServiceProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    paymentServiceProvider,
    ...?paymentServiceProvider.allTransitiveDependencies,
    authUiServiceProvider,
    ...?authUiServiceProvider.allTransitiveDependencies
  },
);

typedef _$PaymentConfigState = AsyncNotifier<PaymentStatus>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
