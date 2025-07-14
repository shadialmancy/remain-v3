import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/constants/constants.dart';

class VerificationTextField extends StatelessWidget {
  const VerificationTextField({super.key, required this.onChanged});
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: PinCodeTextField(
        autoUnfocus: false,
        appContext: context,
        length: 4,
        onChanged: onChanged,
        cursorColor: theme.darkText,
        autoFocus: true,

        animationType: AnimationType.none,
        // keyboardType: TextInputType.number,
        pinTheme: PinTheme.defaults(
          inactiveColor: theme.blue98,
          selectedColor: theme.blue98,
          activeColor: theme.lightBlueBorderColor,
          fieldHeight: 80,
          borderWidth: 3,
          activeBorderWidth: 3,
          inactiveBorderWidth: 3,
          selectedBorderWidth: 3,
        ),
      ),
    );
  }
}
