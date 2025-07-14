import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/authentication/widgets/widgets.dart';

import '../../../../core/constants/constants.dart';

class AddCreditCardUi extends StatelessWidget {
  AddCreditCardUi({super.key});
  final TextEditingController cardholderNameController =
      TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 4.sh, horizontal: 5.1.sw),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.enterYourCardDetails,
                    style: theme.bodyMedium.copyWith(
                        color: theme.dark2E, fontWeight: FontWeight.w600),
                  ),
                  gapH20,
                  CustomTextField(
                    hint: l10n.cardholderName,
                    controller: cardNumberController,
                  ),
                  gapH16,
                  CustomTextField(
                    hint: l10n.cardNumber,
                    controller: cardNumberController,
                  ),
                  gapH16,
                  Row(
                    children: [
                      Expanded(
                        child: ExpiryDateextField(
                          controller: expiryDateController,
                          hint: l10n.expirationDate,
                        ),
                      ),
                      gapW16,
                      Expanded(
                        child: CustomTextField(
                          hint: l10n.verificationCodeCVV,
                          controller: cvvController,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.1.sw,
              right: 5.1.sw,
              bottom: 3.1.sh,
            ),
            child: PrimaryButton(
              onPressed: () {
                context.maybePop();
              },
              title: l10n.addCard,
            ),
          ),
        ],
      ),
    );
  }
}
