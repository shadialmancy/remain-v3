// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartServiceHash() => r'2d9c3678b1e886700c0fc2f6e933245691423272';

/// See also [CartService].
@ProviderFor(CartService)
final cartServiceProvider =
    AsyncNotifierProvider<CartService, List<OfferCartItem>>.internal(
  CartService.new,
  name: r'cartServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartServiceHash,
  dependencies: <ProviderOrFamily>[
    authUiServiceProvider,
    paymentsRepositoryProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    authUiServiceProvider,
    ...?authUiServiceProvider.allTransitiveDependencies,
    paymentsRepositoryProvider,
    ...?paymentsRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$CartService = AsyncNotifier<List<OfferCartItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
