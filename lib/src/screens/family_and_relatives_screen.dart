import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/medical_record/presentation/ui/family_and_relatives_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class FamilyAndRelativesScreen extends StatelessWidget {
  const FamilyAndRelativesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        title: Text(
          l10n.familyAndRelatives,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
        backButton: const SizedBox(),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const FamilyAndRelativesUi(),
        tablet: const FamilyAndRelativesUi(),
        desktop: const FamilyAndRelativesUi(),
      ),
    );
  }
}
