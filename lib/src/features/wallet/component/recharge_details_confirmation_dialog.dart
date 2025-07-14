import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/constants.dart';
import '../../../core/localization/locale_constants.dart';
import '../../../core/routes/app_router.dart';
import '../../../core/themes/themes.dart';
import '../../../core/widgets/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../payments/presentation/providers/payments_service.dart';
import '../presentation/provider/recharge_balance_wallet_provider.dart';

class RechargeDetailsConfirmationDialog extends ConsumerStatefulWidget {
  const RechargeDetailsConfirmationDialog({
    super.key,
  });
  @override
  ConsumerState<RechargeDetailsConfirmationDialog> createState() =>
      _RechargeDetailsConfirmationDialogState();
}

class _RechargeDetailsConfirmationDialogState
    extends ConsumerState<RechargeDetailsConfirmationDialog> {
  @override
  void initState() {
    super.initState();
    getAppLocale();
  }

  String localee = '';
  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      localee = value.toString();
    });
    setState(() {});
  }

  Row dataInfo(
    String title,
    String? value,
    FlutterFlowTheme theme,
  ) {
    return Row(
      children: [
        gapW4,
        RichText(
          text: TextSpan(
            text: '$title: ',
            style: theme.labelLargeSecondary.copyWith(
                fontWeight: FontWeight.w400,
                fontFamily: localee == AppStrings.en.toLowerCase()
                    ? null
                    : AppStrings.arabicFont),
            children: [
              TextSpan(
                  text: value,
                  style: theme.labelLarge.copyWith(
                    fontWeight: FontWeight.w400,
                  )),
            ],
          ),
        ),
      ],
    );
  }

  TextSpan titleInfo(String title, FlutterFlowTheme theme) {
    return TextSpan(
      text: "$title ",
      style: theme.labelLargeSecondary.copyWith(
        fontWeight: FontWeight.w400,
      ),
    );
  }

  TextSpan valueInfo(String value, FlutterFlowTheme theme) {
    return TextSpan(
        text: value,
        style: theme.labelLarge.copyWith(fontWeight: FontWeight.w400));
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final paymentService = ref.watch(paymentServiceProvider.notifier);
    return AlertDialog(
      backgroundColor: theme.whiteColor,
      elevation: 0.0,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: '${l10n.noteThat}: ',
              style: theme.labelLarge.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: localee == AppStrings.en.toLowerCase()
                      ? null
                      : AppStrings.arabicFont),
              children: [
                titleInfo(l10n.yourSubtotalChargeIs, theme),
                valueInfo(
                    "${paymentService.getCalculatePaymentResponseEntity()?.data?.recharging.toString()}${l10n.sar}",
                    theme),
                titleInfo(' ${l10n.withVATCostOf}', theme),
                valueInfo(
                    "${paymentService.getCalculatePaymentResponseEntity()?.data?.vat.toString()}${l10n.sar}",
                    theme),
                titleInfo(' ${l10n.forTotalOf}', theme),
                valueInfo(
                    "${paymentService.getCalculatePaymentResponseEntity()?.data?.total.toString()}${l10n.sar}",
                    theme),
              ],
            ),
          ),
          Divider(
            color: theme.grey,
          ),
          gapH12,
          dataInfo(
              l10n.subTotal,
              "${paymentService.getCalculatePaymentResponseEntity()?.data?.recharging}${l10n.sar}",
              theme),
          gapH8,
          dataInfo(
              l10n.vat,
              "${paymentService.getCalculatePaymentResponseEntity()?.data?.vat}${l10n.sar}",
              theme),
          gapH8,
          dataInfo(
              l10n.total,
              "${paymentService.getCalculatePaymentResponseEntity()?.data?.total}${l10n.sar}",
              theme),
        ],
      ),
      actions: [
        AsyncValueWidget(
            value: ref.watch(rechargeBalanceWalletServiceProvider),
            data: (loading) {
              return CustomButton(
                width: double.infinity,
                title: l10n.proceedToPayment,
                onPressed: () async {
                  ref
                      .read(paymentServiceProvider.notifier)
                      .setPaymentDescription(l10n.walletRecharge);

                  if (context.mounted) {
                    context.router.popAndPush(const WalletPaymentRoute());
                  }
                },
                titleStyle: theme.titleSmall.copyWith(
                  color: theme.white,
                  fontWeight: FontWeight.w700,
                ),
                backgroundColor: theme.primary,
              );
            }),
        gapH12,
        CustomButton(
            width: double.infinity,
            title: l10n.cancel,
            onPressed: () {
              context.router.maybePop();
            },
            titleStyle: theme.titleSmall.copyWith(
              color: theme.redApple,
              fontWeight: FontWeight.w700,
            ),
            backgroundColor: theme.whiteColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: theme.redApple,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(radius12),
            )),
      ],
    );
  }
}
