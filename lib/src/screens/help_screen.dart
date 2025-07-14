import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/help_and_support/presentation/ui/help_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        title: Text(
          l10n.customerService,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
        backButton: const SizedBox(),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const HelpUi(),
        tablet: const HelpUi(),
        desktop: const HelpUi(),
      ),
    );
  }
}
