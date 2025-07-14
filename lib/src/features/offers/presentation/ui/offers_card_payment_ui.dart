import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moyasar/moyasar.dart';
import 'package:remain/src/features/examination_offer/presentation/providers/examination_cart_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../payments/presentation/providers/payment_config_state_provider.dart';
import '../../../payments/widgets/widgets.dart';
import '../provider/cart_provider.dart';
import '../provider/offer_payments_service.dart';
import '../provider/offers_card_payment_provider.dart';

class OffersCardPaymentUi extends ConsumerStatefulWidget {
  const OffersCardPaymentUi({super.key});

  @override
  ConsumerState<OffersCardPaymentUi> createState() => _PaymentsUiState();
}

class _PaymentsUiState extends ConsumerState<OffersCardPaymentUi> {
  void setPaymentConfig() {
    num? total = ref
        .read(offerPaymentsServiceProvider.notifier)
        .getTotalWithVat()
        ?.data
        ?.total;
    if (total != null) {
      ref
          .read(paymentConfigStateProvider.notifier)
          .setPaymentConfig(totalToPay: total);
    }
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
    final offerPayRef = ref.read(offersCardPaymentServiceProvider.notifier);
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
                      offerPayRef.setPaymentRepId(result.id);
                      bool status = false;
                      logger.i('result.status: ${result.status}');
                      if (result.status == PaymentStatus.paid) {
                        offerPayRef.setPaymentStatus(true);
                        status = await offerPayRef.savepaymentWithWebHook();
                      } else {
                        offerPayRef.setPaymentStatus(false);
                      }
                      // bool status = await offerPayRef.postBookingPayment();

                      if (result.status == PaymentStatus.paid && status) {
                        offerPayRef.reset();
                        if (context.mounted) {
                          await ref
                              .read(cartServiceProvider.notifier)
                              .clearCart();
                          await ref
                              .read(examinationCartServiceProvider.notifier)
                              .clearCart();
                          ref
                              .read(offerPaymentsServiceProvider.notifier)
                              .clearTotalWithVat();
                          if (context.mounted) {
                            AppToast.successToast(
                                l10n.paymentIsDoneSuccessfully);
                            context.router.popUntilRoot();
                          }
                        }
                      } else if (result.status == PaymentStatus.paid &&
                          !status) {
                        await ref
                            .read(cartServiceProvider.notifier)
                            .clearCart();
                        await ref
                            .read(examinationCartServiceProvider.notifier)
                            .clearCart();
                        ref
                            .read(offerPaymentsServiceProvider.notifier)
                            .clearTotalWithVat();
                        if (context.mounted) {
                          context.router.popUntilRoot();
                          AppToast.errorToast(
                              l10n.paymentIsDoneButFailedToSaveTheTransaction);
                        }
                      } else {
                        if (context.mounted) {
                          context.router.maybePop();
                          AppToast.errorToast(l10n.failedToPay);
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
                              onPaymentResult: moyassarRef.onPaymentResult,
                              onComplete: (result) async {
                                bool status = false;
                                offerPayRef.setPaymentRepId(result.id);
                                if (result.status == PaymentStatus.paid) {
                                  offerPayRef.setPaymentStatus(true);
                                  status = await offerPayRef
                                      .savepaymentWithWebHook();
                                } else {
                                  offerPayRef.setPaymentStatus(false);
                                }
                                if (result.status == PaymentStatus.paid &&
                                    status) {
                                  offerPayRef.reset();
                                  if (context.mounted) {
                                    await ref
                                        .read(cartServiceProvider.notifier)
                                        .clearCart();
                                    await ref
                                        .read(examinationCartServiceProvider
                                            .notifier)
                                        .clearCart();
                                    ref
                                        .read(offerPaymentsServiceProvider
                                            .notifier)
                                        .clearTotalWithVat();

                                    if (context.mounted) {
                                      AppToast.successToast(
                                        l10n.paymentIsDoneSuccessfully,
                                      );
                                      context.router.popUntilRoot();
                                    }
                                  }
                                } else if (result.status ==
                                        PaymentStatus.paid &&
                                    !status) {
                                  await ref
                                      .read(cartServiceProvider.notifier)
                                      .clearCart();
                                  await ref
                                      .read(examinationCartServiceProvider
                                          .notifier)
                                      .clearCart();
                                  ref
                                      .read(
                                          offerPaymentsServiceProvider.notifier)
                                      .clearTotalWithVat();

                                  if (context.mounted) {
                                    context.router.maybePop();
                                    AppToast.errorToast(l10n
                                        .paymentIsDoneButFailedToSaveTheTransaction);
                                  }
                                } else {
                                  if (context.mounted) {
                                    context.router.maybePop();
                                    AppToast.errorToast(l10n.failedToPay);
                                  }
                                }
                              },
                            ),
                            gapH16,
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
