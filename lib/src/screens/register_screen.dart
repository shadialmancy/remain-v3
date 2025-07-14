import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/core/widgets/widgets.dart';

import '../core/constants/constants.dart';
import '../features/authentication/presentation/ui/register_ui.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: TransparentAppBar(
        centerTitle: true,
        color: theme.greyFA,
        title: Text(
          l10n.registerAccount,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const RegisterUi(),
        tablet: const RegisterUi(),
        desktop: const RegisterUi(),
      ),
    );
  }
}
