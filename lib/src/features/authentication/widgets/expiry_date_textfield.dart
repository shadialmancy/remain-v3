import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/widgets.dart';

class ExpiryDateextField extends StatefulWidget {
  const ExpiryDateextField(
      {this.style, required this.controller, super.key, required this.hint});
  final TextEditingController? controller;
  final TextStyle? style;
  final String hint;
  @override
  State<ExpiryDateextField> createState() => _ExpiryDateextFieldState();
}

class _ExpiryDateextFieldState extends State<ExpiryDateextField> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return CustomTextField(
      controller: widget.controller,
      hint: widget.hint,
      style: widget.style,
      validator: (value) {
        if (value!.isEmpty) {
          return l10n.selectYourDateOfBirth;
        }
        return null;
      },
      onTap: () async {
        //there is a responsive problem here
        // DateTime? selectedDate = await showMonthYearPicker(
        //   context: context,
        //   builder: (context, child) {
        //     return SizedBox(
        //       width: double.infinity,
        //       child: child,
        //     );
        //   },
        //   initialDate: DateTime.now(),
        //   firstDate: DateTime(1900),
        //   lastDate: DateTime.now(),
        // );
        // if (selectedDate != null) {
        //   setState(() {
        //     widget.controller?.text =
        //         "${selectedDate.year}-${selectedDate.month}";
        //   });
        //   logger.d('DateOfBirthTextField: ${widget.controller?.text}');
        // }
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
    );
  }
}
