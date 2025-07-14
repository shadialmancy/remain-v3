import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/widgets.dart';

class DateOfBirthTextField extends StatefulWidget {
  const DateOfBirthTextField({this.style, required this.controller, super.key});
  final TextEditingController? controller;
  final TextStyle? style;
  @override
  State<DateOfBirthTextField> createState() => _DateOfBirthTextFieldState();
}

class _DateOfBirthTextFieldState extends State<DateOfBirthTextField> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.dateOfBirth,
          style: widget.style ??
              theme.bodyMedium
                  .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
        ),
        gapH12,
        CustomTextField(
          controller: widget.controller,
          hint: l10n.selectYourDateOfBirth,
          style: widget.style,
          validator: (value) {
            if (value!.isEmpty) {
              return l10n.pleaseSelectYourDateOfBirth;
            }
            return null;
          },
          suffix: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: theme.darkText.withValues(alpha: 0.6),
          ),
          onTap: () async {
            DateTime? selectedDate = await showDatePicker(
              builder: (context, child) {
                return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ColorScheme.light(
                        primary: theme.primary, // Header background color
                        onPrimary: theme.white, // Header text color
                        onSurface: theme.dark40, // Body text color
                      ),
                    ),
                    child: child!);
              },
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );
            if (selectedDate != null) {
              setState(() {
                widget.controller?.text =
                    "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}";
              });
              logger.d('DateOfBirthTextField: ${widget.controller?.text}');
            }
          },
          readOnly: true,
          onChanged: (p0) {
            setState(() {});
          },
        ),
      ],
    );
  }
}
