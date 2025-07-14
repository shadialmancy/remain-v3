import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/wallet/presentation/ui/recharge_wallet_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class RechargeWalletScreen extends StatelessWidget {
  const RechargeWalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.white,
      appBar: TransparentAppBar(
        title: Text(
          l10n.walletRecharge,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const RechargeWalletUi(),
        tablet: const RechargeWalletUi(),
        desktop: const RechargeWalletUi(),
      ),
    );
  }
}
