import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class IndicatorContainer extends StatelessWidget {
  const IndicatorContainer(
      {super.key, required this.textList, required this.currentPageNum});
  final List<String> textList;
  final int currentPageNum;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Row(
      children: List.generate(
        textList.length,
        (index) {
          return AnimatedContainer(
            margin: EdgeInsets.only(left: 0.7.sw),
            duration: const Duration(milliseconds: 500),
            width: currentPageNum == index ? 22 : 12,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: AppSizes.borderRadius32,
                color: currentPageNum == index
                    ? theme.primaryBackground
                    : theme.primaryBackground.withValues(alpha: 0.5)),
          );
        },
      ),
    );
  }
}
