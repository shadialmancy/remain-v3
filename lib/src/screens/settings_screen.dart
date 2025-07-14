import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/profile/presentation/ui/settings_ui.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        title: Text(
          l10n.settings,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const SettingsUi(),
        tablet: const SettingsUi(),
        desktop: const SettingsUi(),
      ),
    );
  }
}
