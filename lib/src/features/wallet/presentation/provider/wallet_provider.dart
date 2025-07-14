// ignore_for_file: avoid_public_notifier_properties
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'wallet_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class WalletService extends _$WalletService {
  @override
  FutureOr<String> build() {
    return amount;
  }

  String amount = '0';
  final TextEditingController amountController = TextEditingController();

  String currentAmount({int value = 1}) {
    amount = (value * 100).toString();
    amountController.text = amount;
    state = AsyncValue.data(amount);
    return amount;
  }
}
