import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/constants/constants.dart';
import '../features/onboarding/prensentation/ui/onboarding_ui.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primary,
      body: CustomAdaptiveScreen.builder(
        mobile: const OnboardingUi(),
        tablet: const OnboardingUi(),
        desktop: const OnboardingUi(),
      ),
    );
  }
}
