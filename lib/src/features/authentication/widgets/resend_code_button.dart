import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';

class ResendCodeButton extends StatefulWidget {
  const ResendCodeButton({super.key});

  @override
  State<ResendCodeButton> createState() => _ResendCodeButtonState();
}

class _ResendCodeButtonState extends State<ResendCodeButton> {
  bool isResendActive = true;
  int secondsRemaining = 0;
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _resendCode() {
    setState(() {
      isResendActive = false;
      secondsRemaining = 30;
    });

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (secondsRemaining > 0) {
          secondsRemaining--;
        } else {
          isResendActive = true;
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: l10n.didntReceiveTheVerificationCode,
              style: theme.bodySmall.copyWith(color: theme.dark2E),
            ),
            TextSpan(
              text: isResendActive
                  ? " ${l10n.resend}"
                  : " ${l10n.resend} (${secondsRemaining}s)",
              recognizer: TapGestureRecognizer()
                ..onTap = isResendActive ? _resendCode : null,
              style: theme.bodyMedium.copyWith(
                color: isResendActive ? theme.primary : theme.grey8080,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
