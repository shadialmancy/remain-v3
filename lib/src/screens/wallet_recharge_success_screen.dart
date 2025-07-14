import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../features/wallet/presentation/ui/wallet_recharge_success_ui.dart';

@RoutePage()
class WalletRechargeSuccessScreen extends StatelessWidget {
  const WalletRechargeSuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: const WalletRechargeSuccessUi(),
        tablet: const WalletRechargeSuccessUi(),
        desktop: const WalletRechargeSuccessUi(),
      ),
    );
  }
}
