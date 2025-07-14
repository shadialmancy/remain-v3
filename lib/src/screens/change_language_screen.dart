import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/profile/presentation/ui/change_language_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        title: Text(
          l10n.changeApplicationLanguage,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ChangeLanguageUi(),
        tablet: const ChangeLanguageUi(),
        desktop: const ChangeLanguageUi(),
      ),
    );
  }
}
