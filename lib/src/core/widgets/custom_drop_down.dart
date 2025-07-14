import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key,
      required this.items,
      required this.onChanged,
      this.onTap,
      this.value,
      required this.hint,
      this.validator});
  final List<DropdownMenuItem> items;
  final void Function(dynamic)? onChanged;
  final void Function()? onTap;
  final dynamic value;
  final String hint;
  final String? Function(dynamic)? validator;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return DropdownButtonFormField(
      items: items,
      validator: validator,
      style: theme.bodyMedium,
      dropdownColor: theme.white,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: theme.grey8080,
      ),
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: theme.grey78,
        errorMaxLines: 1,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.error,
            style: BorderStyle.solid,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius8),
          borderSide: BorderSide(color: theme.primary, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius8),
          borderSide: BorderSide(color: theme.primary, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius8),
          borderSide: BorderSide(color: theme.primary, width: 1.5),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius8),
          borderSide: BorderSide(
            color: theme.dark2E.withValues(alpha: 0.4),
          ),
        ),
      ),
      onChanged: onChanged,
      hint: Text(
        hint,
      ),
      value: value,
    );
  }
}
