import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/home/presentation/ui/payment_due_details_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class PaymentsDueDetailsScreen extends StatelessWidget {
  const PaymentsDueDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.whiteColor,
        title: Text(
          l10n.serviceSummary,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const PaymentDueDetailsUI(),
        tablet: const PaymentDueDetailsUI(),
        desktop: const PaymentDueDetailsUI(),
      ),
    );
  }
}
