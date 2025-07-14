import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/authentication/presentation/ui/login_ui.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.secondaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        color: theme.greyFA,
        title: Text(
          l10n.login,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        backButton: context.router.canNavigateBack
            ? Icon(
                Icons.arrow_back,
                color: theme.primary,
              )
            : const SizedBox(),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const LoginUi(),
        tablet: const LoginUi(),
        desktop: const LoginUi(),
      ),
    );
  }
}
