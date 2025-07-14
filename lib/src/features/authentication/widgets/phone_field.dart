import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/constants.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    super.key,
    this.onPhoneChanged,
    // required this.controller,
    this.title,
    this.initialValue,
  });
  final Function(PhoneNumber?)? onPhoneChanged;
  // final PhoneNumberInputController controller;
  final PhoneNumber? initialValue;
  final String? title;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? l10n.phoneNumber,
          style: theme.bodyMedium
              .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
        ),
        gapH12,
        Theme(
          data: Theme.of(context).copyWith(
              primaryColor: theme.grey8080,
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: theme.white,
              )),
          child: InternationalPhoneNumberInput(
            //  initialCountry: 'SA',

            locale: AppStrings.ar.toLowerCase(),
            onInputChanged: onPhoneChanged,
            selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              useBottomSheetSafeArea: true,
            ),
            ignoreBlank: false,
            autoValidateMode: AutovalidateMode.disabled,
            initialValue: initialValue,
            inputBorder: OutlineInputBorder(
              borderRadius: AppSizes.borderRadius8,
              borderSide: BorderSide(
                color: theme.greyD8,
              ),
            ),
            hintText: l10n.phoneNumber,

            // countryListMode: CountryListMode.bottomSheet,
            // controller: controller,
            // allowPickFromContacts: false,
            // onChanged: onPhoneChanged,
            // contactsPickerPosition: ContactsPickerPosition.suffix,
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: AppSizes.borderRadius8,
            //   borderSide: BorderSide(
            //     color: theme.greyD8,
            //   ),
            // ),
            // border: OutlineInputBorder(
            //   borderRadius: AppSizes.borderRadius8,
            //   borderSide: BorderSide(
            //     color: theme.greyD8,
            //   ),
            // ),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: AppSizes.borderRadius8,
            //   borderSide: BorderSide(
            //     color: theme.greyD8,
            //   ),
            // ),
          ),
        ),

        //539418967
        // 2466988744
      ],
    );
  }
}
//2444444444
//505050500
