import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';

class DateTimeSelection extends StatelessWidget {
  const DateTimeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.greyFA,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff6888e6).withValues(alpha: 0.09),
            spreadRadius: 0,
            blurRadius: 24.5,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 5.3.screenWidth, vertical: 2.4.screenHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.chooseDate,
              style: theme.titleSmall.copyWith(
                color: theme.dark2E,
                fontWeight: FontWeight.w500,
              ),
            ),
            gapH8,
          ],
        ),
      ),
    );
  }
}
