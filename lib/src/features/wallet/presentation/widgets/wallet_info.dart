import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class WalletInfo extends StatelessWidget {
  const WalletInfo(
      {super.key,
      required this.icon,
      required this.title,
      required this.value});
  final String icon;
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Container(
      padding: EdgeInsets.all(2.sw),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: theme.lightBlueBorderColor),
        borderRadius: AppSizes.borderRadius8,
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 8.sw,
          ),
          gapW12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.bodySmall.copyWith(
                    fontSize: 10,
                    color: theme.periwinkle,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                value.length >= 15 ? "${value.substring(0, 15)}..." : value,
                style: theme.labelMedium
                    .copyWith(fontWeight: FontWeight.w600, color: theme.greyFA),
              ),
            ],
          )
        ],
      ),
    );
  }
}
