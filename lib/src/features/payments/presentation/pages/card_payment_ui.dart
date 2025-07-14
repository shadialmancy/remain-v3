import 'dart:io';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moyasar/moyasar.dart';
import 'package:remain/src/features/schedules_records/presentation/provider/schedule_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../widgets/widgets.dart';
import '../providers/payment_config_state_provider.dart';
import '../providers/payments_service.dart';

class CardPaymentsUi extends ConsumerStatefulWidget {
  const CardPaymentsUi({super.key});

  @override
  ConsumerState<CardPaymentsUi> createState() => _PaymentsUiState();
}

class _PaymentsUiState extends ConsumerState<CardPaymentsUi> {
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
                      paymentRef.setPaymentRepId(result.id);
                      if (result.status == PaymentStatus.paid) {
                        paymentRef.setPaymentStatus(true);
                      } else {
                        paymentRef.setPaymentStatus(false);
                      }
                      bool status = await paymentRef.postBookingPayment();

                      if (result.status == PaymentStatus.paid && status) {
                        paymentRef.reset();
                        if (context.mounted) {
                          ref.invalidate(scheduleServiceProvider);
                          await ref.watch(scheduleServiceProvider.future);
                          if (context.mounted) {
                            AppToast.successToast(
                                l10n.paymentIsDoneSuccessfully);
                            context.router.replaceAll([
                              const DashboardLayoutRoute(),
                            ]);
                          }
                        }
                      } else if (result.status == PaymentStatus.paid &&
                          !status) {
                        ref.invalidate(scheduleServiceProvider);
                        await ref.watch(scheduleServiceProvider.future);
                        if (context.mounted) {
                          AppToast.errorToast(
                              l10n.paymentIsDoneButFailedToSaveTheTransaction);
                        }
                      } else {
                        if (context.mounted) {
                          context.router.maybePop();
                          AppToast.errorToast(l10n.paymentFailed);
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
                              onComplete: (result) {
                                logger.i('result: $result');
                                paymentRef.setPaymentRepId(result.id);
                                if (result.status == PaymentStatus.paid) {
                                  paymentRef.setPaymentStatus(true);
                                } else {
                                  paymentRef.setPaymentStatus(false);
                                }
                                paymentRef
                                    .postBookingPayment()
                                    .then((status) async {
                                  if (result.status == PaymentStatus.paid &&
                                      status) {
                                    paymentRef.reset();
                                    if (context.mounted) {
                                      ref.invalidate(scheduleServiceProvider);
                                      await ref.watch(
                                          scheduleServiceProvider.future);

                                      if (context.mounted) {
                                        AppToast.successToast(
                                            l10n.paymentIsDoneSuccessfully);
                                        context.router.replaceAll([
                                          const DashboardLayoutRoute(),
                                        ]);
                                      }
                                    }
                                  } else if (result.status ==
                                          PaymentStatus.paid &&
                                      !status) {
                                    ref.invalidate(scheduleServiceProvider);
                                    await ref
                                        .watch(scheduleServiceProvider.future);

                                    if (context.mounted) {
                                      AppToast.errorToast(l10n
                                          .paymentIsDoneButFailedToSaveTheTransaction);
                                    }
                                  } else {
                                    if (context.mounted) {
                                      context.router.maybePop();
                                      AppToast.errorToast(l10n.paymentFailed);
                                    }
                                  }
                                });
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
