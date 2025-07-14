import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../features/splash/presentation/ui/splash_ui.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Scaffold(
      backgroundColor: theme.secondaryBackground,
      body: CustomAdaptiveScreen.builder(
        mobile: const SplashUi(),
        tablet: const SplashUi(),
        desktop: const SplashUi(),
      ),
    );
  }
}
