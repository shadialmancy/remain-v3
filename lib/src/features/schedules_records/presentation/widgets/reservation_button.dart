import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/constants.dart';

class ReservationButton extends StatelessWidget {
  const ReservationButton(
      {super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final String icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(icon),
          gapW8,
          Text(
            title,
            style: theme.labelMedium
                .copyWith(color: theme.dark2E, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
