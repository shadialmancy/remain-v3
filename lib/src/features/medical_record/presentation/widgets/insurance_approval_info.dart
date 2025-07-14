import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class InsuranceApprovalInfo extends StatelessWidget {
  const InsuranceApprovalInfo(
      {super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Padding(
      padding: EdgeInsets.only(bottom: 0.5.sh),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          gapW8,
          Text(
            title,
            style: theme.labelMedium.copyWith(
              color: theme.dark2E,
            ),
          )
        ],
      ),
    );
  }
}
