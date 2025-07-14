import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/profile/presentation/ui/my_bills_ui.dart';

@RoutePage()
class MyBillsScreen extends StatelessWidget {
  const MyBillsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        title: Text(
          l10n.myBills,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const MyBillsUi(),
        tablet: const MyBillsUi(),
        desktop: const MyBillsUi(),
      ),
    );
  }
}
