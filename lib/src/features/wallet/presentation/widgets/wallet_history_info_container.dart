import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../data/models/patient_payment_transactions_dto/patient_transactions_data.dart';

class WalletHistoryInfoContainer extends StatelessWidget {
  const WalletHistoryInfoContainer({super.key, required this.data});
  final PatientTransactionsData? data;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      margin: EdgeInsets.only(bottom: 2.sh),
      padding: EdgeInsets.all(2.sw),
      decoration: BoxDecoration(
          color: theme.greyFA,
          boxShadow: [
            BoxShadow(
                color: theme.brightNavy.withValues(alpha: 0.08),
                offset: const Offset(4, 4),
                blurRadius: 16)
          ],
          borderRadius: AppSizes.borderRadius8),
      child: Row(
        children: [
          Image.asset(
            AssetsHelper.bloodTestIcon,
            width: 10.sw,
          ),
          gapW20,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data?.engName ?? '',
                  style: theme.labelMedium.copyWith(
                      color: theme.dark2E, fontWeight: FontWeight.normal),
                ),
                gapH8,
                Text(
                  data?.transDate ?? '',
                  style: theme.labelSmall.copyWith(
                      color: theme.grey8080, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3.sw),
            padding: EdgeInsets.symmetric(horizontal: 1.sw, vertical: 1.sh),
            decoration: BoxDecoration(
                color: theme.lightRedColor,
                border: Border.all(color: theme.lightRedBorderColor, width: 1),
                borderRadius: AppSizes.borderRadius8),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "-${data?.paidAmount}",
                  style: theme.labelMedium.copyWith(
                      fontWeight: FontWeight.w600, color: theme.darkRed),
                ),
                TextSpan(
                  text: " ${l10n.sr}",
                  style: theme.labelSmall.copyWith(
                      fontWeight: FontWeight.normal, color: theme.darkRed82),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
