import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/skin_care/presentation/ui/skin_care_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class SkinCareScreen extends StatelessWidget {
  const SkinCareScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.primaryBackground,
        title: Text(
          l10n.dermatologyAndBeauty,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const SkinCareUi(),
        tablet: const SkinCareUi(),
        desktop: const SkinCareUi(),
      ),
    );
  }
}
