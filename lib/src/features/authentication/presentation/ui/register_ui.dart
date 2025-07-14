import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/localization/localizations.dart';
import '../../data/models/required_registeration_patient_info/required_registeration_patient_info.dart';
import '../../widgets/widgets.dart';
import '../provider/auth_ui_service.dart';

class RegisterUi extends ConsumerStatefulWidget {
  const RegisterUi({super.key});

  @override
  ConsumerState<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends ConsumerState<RegisterUi> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  // PhoneNumberInputController? phoneController;
  PhoneNumber? phoneNumber;

  TextEditingController emailController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  String gender = '';

  int? currentNationalities;

  final formKey = GlobalKey<FormState>();
  int language = 0;
  RequiredRegisterationPatientInfo requiredRegisterationPatientInfo =
      RequiredRegisterationPatientInfo(
    firstName: '',
    familyName: '',
    fatherName: '',
    grandFatherName: '',
    nextOfKinMobileNum: '',
    nextOfKinName: '',
    nextOfKinRelationId: '',
    identityNo: '',
    typeofDevice: '',
    lang: 0,
    city: '',
    district: '',
    dob: '',
    gender: '',
    email: '',
    nationalityId: '',
    telephones: '',
  );
  Future<void> getAppLocale() async {
    Locale localee = await getLocale();
    if (localee.languageCode.toLowerCase() == AppStrings.ar.toLowerCase()) {
      language = 0;
    } else {
      language = 1;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    //  phoneController = PhoneNumberInputController(context);
    // phoneController?.phoneNumber = '';

    phoneNumber = PhoneNumber(
      phoneNumber: '',
      isoCode: 'SA',
    );
    getAppLocale();
  }

  String? userPhoneNumber = '';

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authRef = ref.read(authUiServiceProvider.notifier);

    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 3.screenWidth,
          left: 3.screenWidth,
          right: 3.screenWidth,
        ),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
              l10n.enterYouDataCorrectly,
              style: theme.bodyMediumSecondary.copyWith(
                fontWeight: FontWeight.w400,
                color: theme.grey8080,
              ),
            ),
            gapH32,
            TitleWIthTextField(
              title: l10n.fullName,
              controller: fullNameController,
              hint: l10n.enterFullName,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.pleaseEnterFullName;
                }
                return null;
              },
              onChanged: (p0) {
                setState(() {
                  requiredRegisterationPatientInfo =
                      requiredRegisterationPatientInfo.copyWith(
                          firstName: fullNameController.text);
                });
              },
            ),
            gapH16,
            TitleWIthTextField(
              title: l10n.nationalID,
              controller: idController,
              hint: l10n.enterNationalID, keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              //   keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.pleaseEnterNationalID;
                }
                return null;
              },
              onChanged: (p0) {
                setState(() {
                  requiredRegisterationPatientInfo =
                      requiredRegisterationPatientInfo.copyWith(
                          identityNo: idController.text);
                });
              },
            ),
            gapH16,
            PhoneField(
              onPhoneChanged: (val) {
                setState(() {
                  // userPhoneNumber = phoneController?.phoneNumber;
                  userPhoneNumber = val?.phoneNumber;
                  phoneNumber = val;
                });
              },
              initialValue: phoneNumber,
              // controller:
              //     phoneController ?? PhoneNumberInputController(context),
            ),
            gapH16,
            TitleWIthTextField(
              title: l10n.email,
              controller: emailController,
              hint: l10n.enterEmail,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.pleaseEnterEmail;
                } else if (!RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return l10n.enterValidEmail;
                }
                return null;
              },
              onChanged: (p0) {
                setState(() {
                  requiredRegisterationPatientInfo =
                      requiredRegisterationPatientInfo.copyWith(
                          email: emailController.text);
                });
              },
            ),
            gapH16,
            DateOfBirthTextField(
              controller: dateOfBirthController,
            ),
            gapH16,
            TitleWIthTextField(
              title: l10n.city,
              controller: cityController,
              hint: l10n.enterYourCity,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.pleaseEnterCity;
                }
                return null;
              },
              onChanged: (p0) {
                setState(() {
                  requiredRegisterationPatientInfo =
                      requiredRegisterationPatientInfo.copyWith(
                          city: cityController.text);
                });
              },
            ),
            gapH16,
            TitleWIthTextField(
              title: l10n.district,
              controller: districtController,
              hint: l10n.enterYourDistrict,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.pleaseEnterDistrict;
                }
                return null;
              },
              onChanged: (p0) {
                setState(() {
                  requiredRegisterationPatientInfo =
                      requiredRegisterationPatientInfo.copyWith(
                          district: districtController.text);
                });
              },
            ),
            gapH16,
            GenderOption(
              onGenderChange: (chosenGender) {
                if (chosenGender == 'male') {
                  gender = 'm';
                } else {
                  gender = 'f';
                }
                setState(() {
                  requiredRegisterationPatientInfo =
                      requiredRegisterationPatientInfo.copyWith(
                    gender: gender,
                  );
                });
              },
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 2.5.sh),
                child: PrimaryButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      if (phoneNumber?.phoneNumber != '') {
                        if (userPhoneNumber != null) {
                          if (!userPhoneNumber!.startsWith('0')) {
                            userPhoneNumber = '0$userPhoneNumber';
                          }
                        }
                      }
                      requiredRegisterationPatientInfo =
                          requiredRegisterationPatientInfo.copyWith(
                        lang: language,
                        dob: dateOfBirthController.text,
                        typeofDevice: '',
                        telephones: userPhoneNumber ?? '',
                      );
                      authRef
                          .registerNewPatient(requiredRegisterationPatientInfo);
                      if (authRef.getPaitentUserEntity() != null &&
                          context.mounted) {
                        String otpCode =
                            authRef.getPaitentUserEntity()?.data?.randCode ??
                                '';
                        if (userPhoneNumber ==
                                AppleCredentials.appleTestPhone &&
                            idController.text == AppleCredentials.appleTestId) {
                          AppToast.otpForAppleToast(
                              'your otp code is $otpCode');
                        }
                        context.router.push(
                            VerificationCodeRoute(otpCode: int.parse(otpCode)));
                      }
                    }
                  },
                  title: l10n.createAnAccount,
                )),
          ],
        ),
      ),
    );
  }
}
