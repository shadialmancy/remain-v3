import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';

class WalletRechargeSuccessUi extends StatelessWidget {
  const WalletRechargeSuccessUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsHelper.walletSuccess,
              width: 35.sw,
            ),
            gapH20,
            gapH20,
            Text(
              l10n.walletHasBeenSuccessfullyCharged,
              textAlign: TextAlign.center,
              style: theme.displaySmall.copyWith(color: theme.primaryText),
            ),
            gapH32,
            PrimaryButton(
                style: theme.titleSmall.copyWith(
                  fontWeight: FontWeight.w500,
                  color: theme.whiteF6,
                ),
                onPressed: () {
                  context.router.replaceAll(
                    [const DashboardLayoutRoute()],
                  );
                },
                title: l10n.continueTxt),
            gapH12,
            GestureDetector(
              onTap: () {
                context.router.replaceAll(
                  [const DashboardLayoutRoute()],
                );
              },
              child: Text(
                l10n.backToHome,
                style: theme.titleSmall.copyWith(
                    fontWeight: FontWeight.w500,
                    color: theme.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: theme.primary),
              ),
            )
          ],
        ),
      ),
    );
  }
}
