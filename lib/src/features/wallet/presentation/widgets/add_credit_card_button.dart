import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/routes/app_router.dart';

class AddCreditCardButton extends StatelessWidget {
  const AddCreditCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return GestureDetector(
      onTap: () {
        context.router.push(const AddCreditCardRoute());
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 4.sw, vertical: 1.5.sh),
        decoration: BoxDecoration(
          color: theme.whiteFC,
          border: Border.all(color: theme.greyD8),
          borderRadius: AppSizes.borderRadius8,
        ),
        child: Row(
          children: [
            SvgPicture.asset(AssetsHelper.cardAddIcon),
            gapW8,
            Text(
              l10n.addCreditCard,
              style: theme.bodySmall.copyWith(color: theme.dark2E),
            )
          ],
        ),
      ),
    );
  }
}
