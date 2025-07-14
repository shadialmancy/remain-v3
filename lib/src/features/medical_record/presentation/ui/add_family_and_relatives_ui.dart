import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/medical_record/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../../authentication/widgets/widgets.dart';
import '../../../profile/presentation/widgets/widgets.dart';

class AddFamilyAndRelativesUi extends ConsumerStatefulWidget {
  const AddFamilyAndRelativesUi({super.key});

  @override
  ConsumerState<AddFamilyAndRelativesUi> createState() =>
      _AddFamilyAndRelativesUiState();
}

class _AddFamilyAndRelativesUiState
    extends ConsumerState<AddFamilyAndRelativesUi> {
  String? lang;

  TextEditingController fullNameController = TextEditingController();
  bool hasDisease = false;
  String? currentGender;
  PhoneNumber? phoneNumber;

  //PhoneNumberInputController? phoneController;
  TextEditingController insuranceNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();

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
    //phoneController?.phoneNumber = '';
    phoneNumber = PhoneNumber(isoCode: 'SA', dialCode: '966', phoneNumber: '');
    getAppLocale();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final List<String> genderList = [l10n.male, l10n.female];

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
          DateOfBirthTextField(
            controller: dobController,
          ),
          gapH16,
          TitleWIthTextField(
            title: l10n.insuranceNumber,
            controller: insuranceNumberController,
            hint: l10n.enterYourInsuranceNumber,
            //     keyboardType: TextInputType.name,
          ),
          gapH16,
          PhoneField(
            onPhoneChanged: (val) {},
            // controller: phoneController ?? PhoneNumberInputController(context),
            initialValue: phoneNumber,
          ),
          gapH16,
          Text(
            l10n.gender,
            style: theme.bodyMedium
                .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
          ),
          gapH12,
          CustomDropDownTextField(
              value: currentGender,
              items: List.generate(
                2,
                (index) {
                  return DropdownMenuItem(
                    value: genderList[index],
                    child: Text(
                      genderList[index],
                    ),
                  );
                },
              ),
              onChanged: (value) {
                setState(() {
                  currentGender = value;
                });
              },
              hint: l10n.selectGender),
          gapH32,
          Text(
            l10n.medicalHistory,
            style: theme.titleSmall
                .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
          ),
          gapH8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.hasThisPersonEverBeenDiagnosedWithDisease,
                style: theme.labelMedium.copyWith(
                    color: theme.grey8080, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                width: 10.sw,
                child: FittedBox(
                  child: Switch(
                    value: hasDisease,
                    activeColor: theme.white,
                    activeTrackColor: theme.green29,
                    inactiveThumbColor: theme.white,
                    trackOutlineColor: WidgetStateColor.transparent,
                    onChanged: (value) {
                      setState(() {
                        hasDisease = value;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          gapH20,
          hasDisease ? const AddDiseaseSection() : Container(),
          gapH80,
          PrimaryButton(onPressed: () {}, title: l10n.save)
        ],
      ),
    );
  }
}
