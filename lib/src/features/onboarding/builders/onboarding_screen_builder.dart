import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/onboarding/prensentation/widgets/widgets.dart';

import '../../../core/constants/constants.dart';
import '../../../core/helpers/session_manager.dart';

class OnboardingScreenBuilder extends StatefulWidget {
  const OnboardingScreenBuilder({super.key, required this.textList});
  final List<String> textList;
  @override
  State<OnboardingScreenBuilder> createState() =>
      _OnboardingScreenBuilderState();
}

class _OnboardingScreenBuilderState extends State<OnboardingScreenBuilder> {
  final PageController _pageController = PageController();
  int _currentPageNum = 0;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Column(
      children: [
        SizedBox(
          height: 14.sh,
          width: double.infinity,
          child: PageView(
            controller: _pageController,
            physics: const ClampingScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                _currentPageNum = value;
              });
            },
            children: List.generate(
              widget.textList.length,
              (index) {
                return Text(
                  widget.textList[index],
                  style: theme.bodyMedium.copyWith(
                      color: theme.greyFA, fontWeight: FontWeight.w600),
                );
              },
            ),
          ),
        ),
        gapH16,
        IndicatorContainer(
            textList: widget.textList, currentPageNum: _currentPageNum),
        gapH32,
        gapH8,
        CustomButton(
          onPressed: () async {
            if (_currentPageNum == 1) {
              await sessionManager.setBoardingVisit(statue: true);
              context.mounted
                  ? context.router.replace(const LoginRoute())
                  : null;
            } else {
              _currentPageNum = _currentPageNum + 1;
              setState(() {});
              await _pageController.animateToPage(
                _currentPageNum,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
            }
          },
          width: double.infinity,
          title: l10n.next,
          backgroundColor: theme.white,
          titleStyle: theme.bodyMedium.copyWith(color: theme.primary),
        ),
        gapH32,
        gapH8,
      ],
    );
  }
}
