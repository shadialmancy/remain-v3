// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge_balance_wallet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rechargeBalanceWalletServiceHash() =>
    r'307382d25ecfd158503a8f5c1468de4d2638c22c';

/// See also [RechargeBalanceWalletService].
@ProviderFor(RechargeBalanceWalletService)
final rechargeBalanceWalletServiceProvider =
    AsyncNotifierProvider<RechargeBalanceWalletService, void>.internal(
  RechargeBalanceWalletService.new,
  name: r'rechargeBalanceWalletServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$rechargeBalanceWalletServiceHash,
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

typedef _$RechargeBalanceWalletService = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
