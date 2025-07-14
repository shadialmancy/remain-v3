import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/features/onboarding/builders/onboarding_screen_builder.dart';

class OnboardingUi extends StatelessWidget {
  const OnboardingUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sw),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            AssetsHelper.onboardingLogo,
            width: 300,
          ),
          gapH80,
          OnboardingScreenBuilder(
              textList: [l10n.onboardingText1, l10n.onboardingText2])
        ],
      ),
    );
  }
}
