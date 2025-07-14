import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../data/models/patient_info.dart';
import '../../widgets/widgets.dart';

class VerificationCodeUi extends ConsumerStatefulWidget {
  const VerificationCodeUi({super.key, required this.otpCode});
  final int otpCode;

  @override
  ConsumerState<VerificationCodeUi> createState() => _VerificationCodeUiState();
}

class _VerificationCodeUiState extends ConsumerState<VerificationCodeUi> {
  String pinCode = '';
  bool isPop = false;
  final formKey = GlobalKey<FormState>();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authRef = ref.read(authUiServiceProvider.notifier);
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(left: 3.sw, right: 3.sw, top: 8.sh, bottom: 3.sh),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.sw),
              child: VerificationTextField(
                onChanged: (String value) {
                  setState(() {
                    pinCode = value;
                  });
                },
              ),
            ),
            AsyncValueWidget(
                value: ref.watch(authUiServiceProvider),
                data: (PatientInfo? patientInfo) {
                  return CustomButton(
                    width: double.infinity,
                    title: l10n.confirm,
                    isDisabled: pinCode.length != 4,
                    disabledColor: theme.lightBlue,
                    titleStyle: theme.bodyMedium.copyWith(
                      color: theme.whiteF6,
                      fontWeight: FontWeight.w500,
                    ),
                    onPressed: () async {
                      FocusManager.instance.primaryFocus?.unfocus();
                      if (formKey.currentState!.validate()) {
                        bool verified = await authRef.verifyOtp(pinCode);
                        if (verified && context.mounted) {
                          context.router
                              .replaceAll([const DashboardLayoutRoute()]);
                        } else {
                          AppToast.errorToast(l10n.invalidOtp);
                        }
                      }
                    },
                  );
                }),
            gapH24,
            const ResendCodeButton()
          ],
        ),
      ),
    );
  }
}
