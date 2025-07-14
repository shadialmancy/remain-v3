// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_transaction_wallet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchTransactionWalletServiceHash() =>
    r'dccecf8459c776f779ee7439bf0d17eede71f85a';

/// See also [FetchTransactionWalletService].
@ProviderFor(FetchTransactionWalletService)
final fetchTransactionWalletServiceProvider = AsyncNotifierProvider<
    FetchTransactionWalletService, PatientPaymentTransactionsEntity?>.internal(
  FetchTransactionWalletService.new,
  name: r'fetchTransactionWalletServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchTransactionWalletServiceHash,
  dependencies: <ProviderOrFamily>[authUiServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    authUiServiceProvider,
    ...?authUiServiceProvider.allTransitiveDependencies
  },
);

typedef _$FetchTransactionWalletService
    = AsyncNotifier<PatientPaymentTransactionsEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
