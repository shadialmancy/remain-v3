import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/medical_record/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/locale_constants.dart';
import '../../../authentication/widgets/widgets.dart';
import '../../../profile/presentation/widgets/widgets.dart';

class EditInsuranceProfileUi extends StatefulWidget {
  const EditInsuranceProfileUi({super.key});

  @override
  State<EditInsuranceProfileUi> createState() => _EditInsuranceProfileUiState();
}

class _EditInsuranceProfileUiState extends State<EditInsuranceProfileUi> {
  String? lang;

  TextEditingController fullNameController = TextEditingController();
  String? currentInsuranceCompanyName;
  // PhoneNumberInputController? phoneController;
  PhoneNumber? phoneNumber;

  TextEditingController insuranceNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();

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

    return SingleChildScrollView(
      padding: EdgeInsets.all(5.1.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PickImageButton(lang: lang),
          gapH16,
          TitleWIthTextField(
            title: l10n.fullName,
            controller: fullNameController,
            hint: l10n.enterFullName,
            // keyboardType: TextInputType.name,
          ),
          gapH16,
          Text(
            l10n.insuranceCompanyName,
            style: theme.bodyMedium
                .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
          ),
          gapH12,
          CustomDropDownTextField(
              value: currentInsuranceCompanyName,
              items: List.generate(
                1,
                (index) {
                  return const DropdownMenuItem(
                    value: "Company 1",
                    child: Text(
                      "Company 1",
                    ),
                  );
                },
              ),
              onChanged: (value) {
                setState(() {
                  currentInsuranceCompanyName = value;
                });
              },
              hint: l10n.chooseYourInsuranceCompany),
          gapH16,
          TitleWIthTextField(
            title: l10n.insuranceNumber,
            controller: insuranceNumberController,
            hint: l10n.enterYourInsuranceNumber,
            //    keyboardType: TextInputType.name,
          ),
          gapH16,
          PhoneField(
            onPhoneChanged: (val) {},
            initialValue: phoneNumber,
            //  controller: phoneController ?? PhoneNumberInputController(context),
          ),
          gapH16,
          TitleWIthTextField(
            title: l10n.email,
            controller: emailController,
            hint: l10n.enterEmail,
            // keyboardType: TextInputType.name,
          ),
          gapH16,
          Text(
            l10n.expiryDate,
            style: theme.bodyMedium
                .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
          ),
          gapH12,
          ExpiryDateextField(
            controller: expiryDateController,
            hint: l10n.selectTheExpiryDateWrittenOnYourInsuranceCard,
          ),
          gapH16,
          const InsuranceCardImage(),
          gapH24,
          PrimaryButton(onPressed: () {}, title: l10n.save),
          gapH20,
        ],
      ),
    );
  }
}
