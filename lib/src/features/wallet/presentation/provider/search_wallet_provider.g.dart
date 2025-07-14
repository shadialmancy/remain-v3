// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_wallet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchWalletServiceHash() =>
    r'90f09e87b854235a992ffa618406a51f2ae21080';

/// See also [SearchWalletService].
@ProviderFor(SearchWalletService)
final searchWalletServiceProvider = AsyncNotifierProvider<SearchWalletService,
    List<PatientTransactionsData?>?>.internal(
  SearchWalletService.new,
  name: r'searchWalletServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchWalletServiceHash,
  dependencies: <ProviderOrFamily>[fetchTransactionWalletServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    fetchTransactionWalletServiceProvider,
    ...?fetchTransactionWalletServiceProvider.allTransitiveDependencies
  },
);

typedef _$SearchWalletService = AsyncNotifier<List<PatientTransactionsData?>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
