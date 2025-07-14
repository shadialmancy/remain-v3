import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/wallet/presentation/provider/recharge_balance_wallet_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/widgets/widgets.dart';

import '../../../../core/constants/constants.dart';

class EnterAmountText extends ConsumerStatefulWidget {
  const EnterAmountText({super.key});

  @override
  ConsumerState<EnterAmountText> createState() => _EnterAmountTextState();
}

class _EnterAmountTextState extends ConsumerState<EnterAmountText> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final rechargeBalanceService =
        ref.watch(rechargeBalanceWalletServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(rechargeBalanceWalletServiceProvider),
        data: (_) {
          //  amountController.text = rechargeBalanceService.getAmount() ?? '';
          return Container(
            color: theme.primaryBackground,
            width: double.infinity,
            padding: EdgeInsets.only(top: 6.5.sh, bottom: 5.sh),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    l10n.enterTheAmount,
                    style: theme.labelMedium.copyWith(
                        color: theme.grey8080, fontWeight: FontWeight.normal),
                  ),
                  gapH12,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextField(
                        width: 40.screenWidth,
                        controller:
                            rechargeBalanceService.getAmountController(),
                        textAlign: TextAlign.center,
                        hint: '000',
                        hintStyle: theme.displayLarge.copyWith(
                            fontSize: 48,
                            fontWeight: FontWeight.normal,
                            color: theme.grey8080),
                        style: theme.displayLarge.copyWith(
                            fontSize: 52,
                            fontWeight: FontWeight.w700,
                            color: theme.primary),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(5)
                        ],
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        border: InputBorder.none,
                        fillColor: theme.primaryBackground,
                        onChanged: (p0) {
                          setState(() {
                            rechargeBalanceService
                                .setCurrentIndexSelected(null);
                            rechargeBalanceService.setAmount(p0);
                            rechargeBalanceService.setAmountController(
                                TextEditingController(text: p0));
                          });
                        },
                      ),
                      Text(
                        ' ${l10n.sr}',
                        style: theme.bodySmall.copyWith(color: theme.grey8080),
                      ),
                    ],
                  ),
                  // RichText(
                  //     text: TextSpan(children: [
                  //   TextSpan(
                  //       text: currentAmount,
                  //       style: theme.displayLarge.copyWith(
                  //           fontSize: 52,
                  //           fontWeight: FontWeight.w700,
                  //           color: theme.primary)),
                  //   TextSpan(
                  //       text: ' ${l10n.sr}',
                  //       style: theme.bodySmall.copyWith(color: theme.grey8080)),
                  // ]))
                ],
              ),
            ),
          );
        });
  }
}
