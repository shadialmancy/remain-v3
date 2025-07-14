import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../src/core/constants/constants.dart';

class BottomBars extends StatelessWidget {
  const BottomBars({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isActive,
  });
  final String icon;
  final String title;
  final bool isActive;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Column(
      children: [
        IconButton(
          icon: SvgPicture.asset(
            icon,
            theme: SvgTheme(
              currentColor: isActive ? theme.primary : theme.secondaryText,
            ),
          ),
          onPressed: onTap,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            title,
            style: theme.bodySmall.copyWith(
              color: isActive ? theme.primary : theme.secondaryText,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
