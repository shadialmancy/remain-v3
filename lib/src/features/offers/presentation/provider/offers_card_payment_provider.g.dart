// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_card_payment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$offersCardPaymentServiceHash() =>
    r'2b804315eeb8afebbabc93f5ab98e62bdec6ed15';

/// See also [OffersCardPaymentService].
@ProviderFor(OffersCardPaymentService)
final offersCardPaymentServiceProvider =
    AsyncNotifierProvider<OffersCardPaymentService, void>.internal(
  OffersCardPaymentService.new,
  name: r'offersCardPaymentServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$offersCardPaymentServiceHash,
  dependencies: <ProviderOrFamily>[
    authUiServiceProvider,
    offerPaymentsServiceProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    authUiServiceProvider,
    ...?authUiServiceProvider.allTransitiveDependencies,
    offerPaymentsServiceProvider,
    ...?offerPaymentsServiceProvider.allTransitiveDependencies
  },
);

typedef _$OffersCardPaymentService = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
