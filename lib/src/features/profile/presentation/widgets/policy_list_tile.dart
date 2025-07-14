import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';

class PolicyListTile extends StatelessWidget {
  const PolicyListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});
  final String title;
  final String icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: theme.dark48,
        size: 15,
      ),
      title: Text(
        title,
        style: theme.labelLarge
            .copyWith(fontWeight: FontWeight.w400, color: theme.dark18),
      ),
      leading: SvgPicture.asset(icon),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      onTap: onTap,
    );
  }
}
