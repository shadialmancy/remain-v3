import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {super.key,
      required this.icon,
      required this.title,
      this.iconWidget,
      required this.onTap});
  final String icon;
  final Widget? iconWidget;

  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Container(
      decoration: BoxDecoration(
          color: theme.greyFA,
          borderRadius: AppSizes.borderRadius8,
          border: Border.all(color: theme.secondaryBorderColor)),
      child: ListTile(
        onTap: onTap,
        leading: iconWidget ?? SvgPicture.asset(icon),
        title: Text(
          title,
          style: theme.labelLargeSecondary
              .copyWith(color: theme.dark40, fontWeight: FontWeight.normal),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 5.sw,
        ),
      ),
    );
  }
}
