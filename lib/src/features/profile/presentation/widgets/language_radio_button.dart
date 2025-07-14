import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class LanguageRadioButton extends StatelessWidget {
  const LanguageRadioButton(
      {super.key,
      required this.value,
      required this.title,
      required this.groupValue,
      this.onChanged,
      required this.leading});
  final String value;
  final String title;
  final String leading;
  final String? groupValue;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Container(
      decoration: BoxDecoration(
          color: theme.white,
          borderRadius: AppSizes.borderRadius8,
          border: Border.all(color: theme.secondaryBorderColor, width: 1)),
      child: RadioListTile(
        value: value,
        activeColor: theme.primary,
        fillColor:
            WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return theme.primary; // Selected color
          }
          return theme.radioBorderColor; // Unselected color (red)
        }),
        contentPadding: EdgeInsets.only(
            right: 3.sw, top: 0.7.sh, bottom: 0.7.sh, left: 3.sw),
        title: Row(
          children: [
            SvgPicture.asset(
              leading,
              width: 6.sw,
            ),
            gapW8,
            Text(
              title,
              style: theme.labelLarge
                  .copyWith(fontWeight: FontWeight.normal, color: theme.dark40),
            ),
          ],
        ),
        groupValue: groupValue,
        controlAffinity: ListTileControlAffinity.trailing,
        onChanged: onChanged,
      ),
    );
  }
}
