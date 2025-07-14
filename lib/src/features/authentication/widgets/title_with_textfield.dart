import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/widgets.dart';

class TitleWIthTextField extends StatelessWidget {
  const TitleWIthTextField({
    super.key,
    required this.title,
    required this.controller,
    required this.hint,
    this.inputFormatters,
    this.style,
    this.validator,
    this.onChanged,
    this.keyboardType = TextInputType.name,
  });
  final String title;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? style;
  final TextEditingController controller;
  final String hint;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: style ??
              theme.bodyMedium
                  .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
        ),
        gapH12,
        CustomTextField(
          hint: hint,
          style: style,
          controller: controller,
          inputFormatters: inputFormatters ?? [],
          keyboardType: keyboardType,
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
