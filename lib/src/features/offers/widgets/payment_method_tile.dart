import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants.dart';

class PaymentMethodTile extends StatelessWidget {
  const PaymentMethodTile({
    super.key,
    required this.groupValue,
    required this.icon,
    required this.onChanged,
    required this.title,
    required this.value,
  });
  final int value;
  final void Function(int?) onChanged;
  final int groupValue;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return RadioListTile(
      tileColor: theme.whiteColor,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: theme.primary,
      secondary: SvgPicture.asset(
        icon,
        width: 24,
        height: 24,
      ),
      title: Text(
        title,
        style: theme.titleSmall.copyWith(
          color: theme.dark48,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
