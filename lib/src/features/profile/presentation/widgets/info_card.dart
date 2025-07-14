import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.title,
      required this.value,
      required this.icon});
  final String title;
  final String value;
  final String icon;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Container(
      width: 43.7.screenWidth,
      height: 7.4.screenHeight,
      padding: EdgeInsets.only(left: 4.sw, right: 4.sw),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: theme.greyFA,
          borderRadius: BorderRadius.circular(radius4),
          border: Border.all(color: theme.secondaryBorderColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
          ),
          gapW12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: theme.labelMediumSecondary.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              gapH4,
              Text(
                value,
                style: theme.bodySmall.copyWith(
                  fontWeight: FontWeight.w400,
                  color: theme.primaryText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
