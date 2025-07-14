import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants.dart';

class BookingDetailsTile extends StatelessWidget {
  const BookingDetailsTile({
    super.key,
    required this.title,
    this.iconColor,
    this.subtitle,
    this.trailing,
    required this.leadingIcon,
  });
  final String title;
  final String? subtitle;
  final Color? iconColor;
  final Widget? trailing;
  final String leadingIcon;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.greyFA,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: Text(
          title,
          style: theme.labelLarge.copyWith(
            color: theme.dark2E,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle ?? '',
                style: theme.labelLarge.copyWith(
                  color: theme.grey8080,
                  fontWeight: FontWeight.w400,
                ),
              )
            : null,
        leading: SvgPicture.asset(
          leadingIcon,
          colorFilter:
              ColorFilter.mode(iconColor ?? theme.primary, BlendMode.srcIn),
        ),
        trailing: trailing,
      ),
    );
  }
}
