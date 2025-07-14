import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/home/presentation/ui/all_payments_due.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class PaymentsDueScreen extends StatelessWidget {
  const PaymentsDueScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.whiteColor,
      appBar: TransparentAppBar(
        color: theme.whiteColor,
        title: Text(
          l10n.payments,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const AllPaymentsDueUi(),
        tablet: const AllPaymentsDueUi(),
        desktop: const AllPaymentsDueUi(),
      ),
    );
  }
}
