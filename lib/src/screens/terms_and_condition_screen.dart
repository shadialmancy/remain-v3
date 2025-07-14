import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/profile/presentation/ui/terms_and_condition_ui.dart';

@RoutePage()
class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.white,
        title: Text(
          l10n.termsAndConditions,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const TermsAndConditionUi(),
        tablet: const TermsAndConditionUi(),
        desktop: const TermsAndConditionUi(),
      ),
    );
  }
}
