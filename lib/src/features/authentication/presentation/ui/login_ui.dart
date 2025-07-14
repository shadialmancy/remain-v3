import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/core/constants/app_strings.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../data/models/patient_info.dart';
import '../../widgets/widgets.dart';

class LoginUi extends ConsumerStatefulWidget {
  const LoginUi({super.key});

  @override
  ConsumerState<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends ConsumerState<LoginUi> {
  //PhoneNumberInputController? phoneController;
  PhoneNumber? phoneNumber;
  final TextEditingController nationalIDController = TextEditingController();
  final TextEditingController medicalFileNoController = TextEditingController();

  String? userPhoneNumber = '';
  String? userNationalID = '';
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // phoneController = PhoneNumberInputController(context);
    phoneNumber = PhoneNumber(
      phoneNumber: '',
      isoCode: 'SA',
    );
    // phoneController?.phoneNumber = '';
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authRef = ref.read(authUiServiceProvider.notifier);
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: EdgeInsets.all(3.screenWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SvgPicture.asset(AssetsHelper.logoBanner)),
            gapH24,
            Text(
              "${l10n.welcome}!",
              style: theme.bodyMedium
                  .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
            ),
            gapH12,
            Text(
              l10n.toLoginWritePhoneNumber,
              style: theme.bodyMediumSecondary
                  .copyWith(fontWeight: FontWeight.w400, color: theme.grey8080),
            ),
            gapH32,
            PhoneField(
              onPhoneChanged: (val) {
                setState(() {
                  // userPhoneNumber = phoneController?.phoneNumber;
                  userPhoneNumber = val?.phoneNumber?.split('966')[1];
                  phoneNumber = val;
                });
              },
              initialValue: phoneNumber,
              // controller:
              //     phoneController ?? PhoneNumberInputController(context),
            ),
            gapH20,
            TitleWIthTextField(
              title: l10n.nationalID,
              //   keyboardType: TextInputType.number,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              controller: nationalIDController,
              hint: l10n.enterNationalID,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return l10n.pleaseEnterNationalID;
                }
                return null;
              },
              onChanged: (val) {
                setState(() {
                  userNationalID = val;
                });
              },
            ),
            gapH32,
            AsyncValueWidget(
                value: ref.watch(authUiServiceProvider),
                data: (PatientInfo? patientInfo) {
                  return PrimaryButton(
                    onPressed: () async {
                      FocusManager.instance.primaryFocus?.unfocus();
                      ProgressDialog progressDialog =
                          ProgressDialog(context: context);
                      progressDialog.show(max: 100, msg: l10n.loading);
                      if (formKey.currentState?.validate() ?? false) {
                        if (userPhoneNumber != null) {
                          if (!userPhoneNumber!.startsWith('0')) {
                            userPhoneNumber = '0$userPhoneNumber';
                          }
                        }
                        authRef.setUserPhoneNumber(userPhoneNumber ?? '');
                        await authRef.loginPatient(
                          phoneNumber: userPhoneNumber,
                          id: userNationalID,
                        );
                        progressDialog.close();
                        if (authRef.getPaitentUserEntity() != null &&
                            context.mounted) {
                          String otpCode =
                              authRef.getPaitentUserEntity()?.data?.randCode ??
                                  '';
                          if (userPhoneNumber ==
                                  AppleCredentials.appleTestPhone &&
                              userNationalID == AppleCredentials.appleTestId) {
                            AppToast.otpForAppleToast(
                                'your otp code is $otpCode');
                          }
                          context.router.push(VerificationCodeRoute(
                              otpCode: int.parse(otpCode)));
                        }
                      }
                      progressDialog.close();
                    },
                    title: l10n.continueTxt,
                  );
                }),
            gapH20,
            const DontHaveAccountButton(),
            gapH24,
            const ChangeLanguageButton()
          ],
        ),
      ),
    );
  }
}
