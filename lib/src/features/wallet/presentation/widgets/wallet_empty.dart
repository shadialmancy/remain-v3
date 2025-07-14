import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';

class WalletEmpty extends StatelessWidget {
  const WalletEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        gapH24,
        Image.asset(
          AssetsHelper.walletEmpty,
          width: 35.sw,
        ),
        gapH16,
        Text(
          l10n.thereAreNoPreviousTransactions,
          style: theme.bodyMediumSecondary.copyWith(color: theme.grey8080),
        )
      ],
    );
  }
}
