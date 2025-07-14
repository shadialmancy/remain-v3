import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/authentication/presentation/ui/verification_code_ui.dart';

@RoutePage()
class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen(
      {super.key, @PathParam('otp') required this.otpCode});
  final int otpCode;

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Scaffold(
      backgroundColor: theme.secondaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        title: Text(
          l10n.verifCode,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: VerificationCodeUi(otpCode: widget.otpCode),
        tablet: VerificationCodeUi(otpCode: widget.otpCode),
        desktop: VerificationCodeUi(otpCode: widget.otpCode),
      ),
    );
  }
}
