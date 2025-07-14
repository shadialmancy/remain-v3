import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/widgets/custom_button.dart';

class ApplySearchButton extends StatelessWidget {
  const ApplySearchButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomButton(
            title: l10n.search,
            backgroundColor: theme.primary,
            titleStyle: theme.titleSmall.copyWith(
              color: theme.whiteF6,
              fontWeight: FontWeight.w500,
            ),
            onPressed: () {
              context.router.maybePop();
            },
          ),
        ),
        gapW16,
        Expanded(
          child: CustomButton(
              title: l10n.close,
              backgroundColor: const Color(0xffD0D5DD),
              titleStyle: theme.titleSmall.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              onPressed: onPressed),
        ),
      ],
    );
  }
}
