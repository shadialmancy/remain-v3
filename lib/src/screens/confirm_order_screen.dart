import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/offers/presentation/ui/confirm_order_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.primaryBackground,
        title: Text(
          l10n.performTheOrder,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ConfirmOrderUi(),
        tablet: const ConfirmOrderUi(),
        desktop: const ConfirmOrderUi(),
      ),
    );
  }
}
