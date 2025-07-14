import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/medical_record/presentation/ui/test_results_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class TestResultScreen extends StatelessWidget {
  const TestResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        title: Text(
          l10n.laboratoryAndRadiologyResults,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const TestResultsUi(),
        tablet: const TestResultsUi(),
        desktop: const TestResultsUi(),
      ),
    );
  }
}
