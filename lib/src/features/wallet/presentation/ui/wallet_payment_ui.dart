import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moyasar/moyasar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../payments/presentation/providers/payment_config_state_provider.dart';
import '../../../payments/presentation/providers/payments_service.dart';
import '../../../payments/widgets/widgets.dart';
import '../provider/recharge_balance_wallet_provider.dart';

class WalletPaymentsUi extends ConsumerStatefulWidget {
  const WalletPaymentsUi({super.key});

  @override
  ConsumerState<WalletPaymentsUi> createState() => _PaymentsUiState();
}

class _PaymentsUiState extends ConsumerState<WalletPaymentsUi> {
  void setPaymentConfig() {
    ref.read(paymentConfigStateProvider.notifier).setPaymentConfig();
  }

  @override
  void initState() {
    super.initState();
    setPaymentConfig();
    getAppLocale();
  }

  String lang = AppStrings.en.toLowerCase();
  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      lang = value.languageCode.toLowerCase();
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final moyassarRef = ref.watch(paymentConfigStateProvider.notifier);
    final paymentRef = ref.read(paymentServiceProvider.notifier);
    final rechargeBalanceWalletService =
        ref.watch(rechargeBalanceWalletServiceProvider.notifier);

    //  final doctorRef = ref.watch(doctorsServiceProvider.notifier);
    if (moyassarRef.getPaymentConfig() == null) {
      return const Center(child: CircularProgressIndicator());
    }
    final (_, l10n) = appSettingsRecord(context);
    return AsyncValueWidget(
        value: ref.watch(paymentConfigStateProvider),
        data: (PaymentStatus? paymentStatus) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.1.sw),
              child: Column(
                children: [
                  gapH16,
                  MoyasarCreditForm(
                    locale: lang == AppStrings.ar.toLowerCase()
                        ? const Localization.ar()
                        : const Localization.en(),
                    config: moyassarRef.getPaymentConfig()!,
                    onPaymentResult: moyassarRef.onPaymentResult,
                    onComplete: (result) async {
                      if (result != null) {
                        paymentRef.setPaymentRepId(result.id);
                        if (result.status == PaymentStatus.paid) {
                          rechargeBalanceWalletService.setPaymentStatus(true);
                        } else {
                          rechargeBalanceWalletService.setPaymentStatus(false);
                        }
                        bool status = await rechargeBalanceWalletService
                            .rechargeWalletBalance(bookingId: '');

                        if (result.status == PaymentStatus.paid && status) {
                          // doctorRef.reset(); this if i pay a booking by wallet
                          rechargeBalanceWalletService.reset();
                          paymentRef.reset();
                          if (context.mounted) {
                            context.router
                                .push(const WalletRechargeSuccessRoute());
                          }
                        } else if (result.status == PaymentStatus.paid &&
                            !status) {
                          if (context.mounted) {
                            AppToast.errorToast(l10n
                                .paymentIsDoneButFailedToSaveTheTransaction);
                          }
                        } else {
                          if (context.mounted) {
                            context.router.maybePop();
                            AppToast.errorToast(
                                l10n.failedToRechargeTheBalance);
                          }
                        }
                      } else {
                        logger.e('result is null');
                        if (context.mounted) {
                          context.router.maybePop();
                          AppToast.errorToast(l10n.failedToRechargeTheBalance);
                        }
                      }
                    },
                  ),
                  Platform.isIOS
                      ? Column(
                          children: [
                            gapH16,
                            const Text("or"),
                            gapH16,
                            MoyasarApplePayWidget(
                              config: moyassarRef.getPaymentConfig()!,
                              onPaymentResult: moyassarRef.onSubmitApplePay,
                              onComplete: (result) async {
                                if (result != null) {
                                  logger.i('result: $result');
                                  paymentRef.setPaymentRepId(result.id);
                                  if (result.status == PaymentStatus.paid) {
                                    rechargeBalanceWalletService
                                        .setPaymentStatus(true);
                                  } else {
                                    rechargeBalanceWalletService
                                        .setPaymentStatus(false);
                                  }
                                  bool status =
                                      await rechargeBalanceWalletService
                                          .rechargeWalletBalance(bookingId: '');

                                  if (result.status == PaymentStatus.paid &&
                                      status) {
                                    // doctorRef.reset(); this if i pay a booking by wallet
                                    rechargeBalanceWalletService.reset();
                                    paymentRef.reset();
                                    if (context.mounted) {
                                      context.router.push(
                                          const WalletRechargeSuccessRoute());
                                    }
                                  } else if (result.status ==
                                          PaymentStatus.paid &&
                                      !status) {
                                    if (context.mounted) {
                                      AppToast.errorToast(l10n
                                          .paymentIsDoneButFailedToSaveTheTransaction);
                                    }
                                  } else {
                                    if (context.mounted) {
                                      context.router.maybePop();
                                      AppToast.errorToast(
                                          l10n.failedToRechargeTheBalance);
                                    }
                                  }
                                } else {
                                  logger.e('result is null');
                                  if (context.mounted) {
                                    context.router.maybePop();
                                    AppToast.errorToast(
                                        l10n.failedToRechargeTheBalance);
                                  }
                                }
                              },
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
          );
        });
  }
}
