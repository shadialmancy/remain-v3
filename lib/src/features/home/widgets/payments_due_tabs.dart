import 'package:flutter/material.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/widgets/custom_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PaymentsDueTabs extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onTabSelected;

  const PaymentsDueTabs({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 5.2.screenWidth, vertical: 4),
      decoration: BoxDecoration(
        color: theme.greyFA,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: theme.whiteF2,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () => onTabSelected(1),
              backgroundColor:
                  selectedIndex == 1 ? theme.primary : theme.greyFA,
              title: l10n.previousPayments,
              titleStyle: theme.labelLarge.copyWith(
                color: selectedIndex == 1 ? Colors.white : theme.grey99,
                fontWeight: FontWeight.w400,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          gapW12,
          Expanded(
            child: CustomButton(
              onPressed: () => onTabSelected(0),
              backgroundColor:
                  selectedIndex == 0 ? theme.primary : theme.greyFA,
              title: l10n.paymentsDue,
              titleStyle: theme.labelLarge.copyWith(
                color: selectedIndex == 0 ? Colors.white : theme.grey99,
                fontWeight: FontWeight.w400,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
