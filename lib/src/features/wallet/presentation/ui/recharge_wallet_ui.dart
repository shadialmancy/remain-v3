import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/payments/presentation/providers/payments_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';
import '../../component/recharge_details_confirmation_dialog.dart';
import '../provider/recharge_balance_wallet_provider.dart';
import '../widgets/widgets.dart';

class RechargeWalletUi extends ConsumerStatefulWidget {
  const RechargeWalletUi({super.key});

  @override
  ConsumerState<RechargeWalletUi> createState() => _RechargeWalletUiState();
}

class _RechargeWalletUiState extends ConsumerState<RechargeWalletUi> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(rechargeBalanceWalletServiceProvider.notifier).setAmount('');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final rechargeBalanceWalletService =
        ref.watch(rechargeBalanceWalletServiceProvider.notifier);
    final paymentService = ref.watch(paymentServiceProvider.notifier);

    final (theme, l10n) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const EnterAmountText(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 4.sw),
                child: Text(
                  l10n.quickSelection,
                  style: theme.titleSmall.copyWith(
                      color: theme.dark2E, fontWeight: FontWeight.w500),
                ),
              ),
              gapH8,
              const AmountSelection(),
              gapH32,
              // Padding(
              //   padding: EdgeInsets.only(
              //     left: 5.1.sw,
              //     right: 5.1.sw,
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         l10n.paymentMethod,
              //         style: theme.titleSmall.copyWith(
              //             color: theme.dark2E, fontWeight: FontWeight.w500),
              //       ),
              //       gapH8,
              //       // const AddCreditCardButton()
              //     ],
              //   ),
              // ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    left: 5.1.sw, right: 5.1.sw, bottom: 3.1.sh),
                child: PrimaryButton(
                    onPressed: () async {
                      await paymentService.calcPaymentWithVat(num.parse(
                          rechargeBalanceWalletService.getAmount() ?? ''));
                      if (paymentService
                              .getCalculatePaymentResponseEntity()
                              ?.code ==
                          200) {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            barrierColor: theme.dark48.withValues(alpha: 0.6),
                            barrierDismissible: false,
                            builder: (context) {
                              return const RechargeDetailsConfirmationDialog();
                            },
                          );
                        } else {
                          context.mounted
                              ? AppToast.errorToast(
                                  l10n.failedToCalculatePayment)
                              : null;
                        }
                      }
                    },
                    title: l10n.walletRecharge),
              )
            ],
          ),
        )
      ],
    );
  }
}
