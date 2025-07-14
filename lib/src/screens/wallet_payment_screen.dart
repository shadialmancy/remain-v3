import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../core/constants/constants.dart';
import '../core/helpers/assets_helper.dart';
import '../core/widgets/widgets.dart';
import '../features/wallet/presentation/ui/wallet_payment_ui.dart';

@RoutePage()
class WalletPaymentScreen extends StatelessWidget {
  const WalletPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.whiteColor,
      appBar: TransparentAppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 1.sh),
          child: Image.asset(
            AssetsHelper.splashLogo,
            width: 35.sw,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const WalletPaymentsUi(),
        tablet: const WalletPaymentsUi(),
        desktop: const WalletPaymentsUi(),
      ),
    );
  }
}
