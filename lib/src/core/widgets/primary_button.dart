import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'widgets.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.color,
      this.style,
      this.width,
      this.height,
      this.isDisabled = false});
  final Function() onPressed;
  final String title;
  final Color? color;
  final TextStyle? style;
  final bool isDisabled;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return CustomButton(
      width: width ?? double.infinity,
      title: title,
      height: height ?? 48,
      onPressed: onPressed,
      titleStyle: style ??
          theme.bodyMedium.copyWith(
              fontWeight: FontWeight.w500,
              color: theme.whiteColor,
              fontSize: 14),
      disabledColor: color?.withValues(alpha: 0.1) ?? theme.lightBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius8),
      ),
      backgroundColor: color ?? theme.primary,
      isDisabled: isDisabled,
    );
  }
}
