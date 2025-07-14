import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/payments/presentation/pages/tabby_payment_ui.dart';

@RoutePage()
class TabbyPaymentScreen extends StatelessWidget {
  const TabbyPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.whiteColor,
      appBar: TransparentAppBar(
        color: theme.secondaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const TabbyPaymentUi(),
        tablet: const TabbyPaymentUi(),
        desktop: const TabbyPaymentUi(),
      ),
    );
  }
}
