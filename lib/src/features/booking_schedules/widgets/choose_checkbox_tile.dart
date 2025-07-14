import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class ChooseCheckboxTile extends StatelessWidget {
  const ChooseCheckboxTile(
      {super.key, required this.title, required this.value, this.onChanged});
  final String title;
  final bool value;
  final Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return CheckboxListTile(
      activeColor: theme.primary,
      controlAffinity: ListTileControlAffinity.leading,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(
          color: Color(0xffA2A2A2),
          width: 1,
        ),
      ),
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: theme.titleSmall.copyWith(
          color: theme.grey8080,
          fontWeight: FontWeight.w400,
        ),
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}
