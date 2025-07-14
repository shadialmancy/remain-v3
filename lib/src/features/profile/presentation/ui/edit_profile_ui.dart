import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/localization/localizations.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/profile/presentation/widgets/widgets.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../authentication/widgets/widgets.dart';

class EditProfileUi extends StatefulWidget {
  const EditProfileUi({super.key});

  @override
  State<EditProfileUi> createState() => _EditProfileUiState();
}

class _EditProfileUiState extends State<EditProfileUi> {
  String? lang;

  TextEditingController fullNameController = TextEditingController();
  TextEditingController nationalIDController = TextEditingController();
  // PhoneNumberInputController? phoneController;
  PhoneNumber? phoneNumber;

  TextEditingController emailController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en'
            ? AppStrings.en.toLowerCase()
            : AppStrings.ar.toLowerCase();
      });
    });
  }

  @override
  void initState() {
    // phoneController = PhoneNumberInputController(context);
    // phoneController?.phoneNumber = '';
    phoneNumber = PhoneNumber(isoCode: 'SA', dialCode: '966', phoneNumber: '');

    getAppLocale();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 4.sh, horizontal: 5.1.sw),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PickImageButton(lang: lang),
            gapH16,
            TitleWIthTextField(
              title: l10n.fullName,
              controller: fullNameController,
              hint: l10n.enterFullName,
              //   keyboardType: TextInputType.name,
            ),
            gapH16,
            TitleWIthTextField(
              title: l10n.nationalID,
              controller: nationalIDController,
              hint: l10n.enterNationalID,
              // keyboardType: TextInputType.name,
            ),
            gapH16,
            PhoneField(
              onPhoneChanged: (val) {},
              // controller:
              //     phoneController ?? PhoneNumberInputController(context),
              initialValue: phoneNumber,
            ),
            gapH16,
            TitleWIthTextField(
              title: l10n.email,
              controller: emailController,
              hint: l10n.enterEmail,
              //  keyboardType: TextInputType.name,
            ),
            gapH16,
            DateOfBirthTextField(
              controller: dateOfBirthController,
            ),
            gapH64,
            CustomButton(
              width: double.infinity,
              titleStyle: theme.bodyMedium.copyWith(
                  fontWeight: FontWeight.w500,
                  color: theme.whiteColor,
                  fontSize: 14),
              backgroundColor: theme.primary,
              title: l10n.save,
            )
          ],
        ),
      ),
    );
  }
}
