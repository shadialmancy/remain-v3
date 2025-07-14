import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/home/presentation/ui/home_ui.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        backButton: const SizedBox(),
        color: theme.primaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const HomeUi(),
        tablet: const HomeUi(),
        desktop: const HomeUi(),
      ),
    );
  }
}
