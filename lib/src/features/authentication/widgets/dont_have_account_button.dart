import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/routes/app_router.dart';

class DontHaveAccountButton extends StatelessWidget {
  const DontHaveAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Center(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: l10n.dontHaveAccount,
            style: theme.bodyLargeSecondary
                .copyWith(color: theme.grey8080, fontSize: 16)),
        TextSpan(
            text: " ${l10n.registerAccount}",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.router.push(const RegisterRoute());
              },
            style: theme.bodyMediumSecondary.copyWith(
              color: theme.primary,
              fontSize: 16,
            )),
      ])),
    );
  }
}
