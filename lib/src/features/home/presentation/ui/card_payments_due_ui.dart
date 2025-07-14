import 'dart:io';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moyasar/moyasar.dart';
import 'package:remain/src/features/home/providers/user_payments_due_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../payments/presentation/providers/payment_config_state_provider.dart';
import '../../../payments/presentation/providers/payments_service.dart';
import '../../../payments/widgets/widgets.dart';

class CardPaymentsDueUi extends ConsumerStatefulWidget {
  const CardPaymentsDueUi({super.key});

  @override
  ConsumerState<CardPaymentsDueUi> createState() => _PaymentsUiState();
}

class _PaymentsUiState extends ConsumerState<CardPaymentsDueUi> {
  void setPaymentConfig() {
    final total = ref
            .read(userPaymentsDueServiceProvider.notifier)
            .getSelectedPaymentDue()
            ?.totalAmount ??
        0.0;
    final service = ref
            .read(userPaymentsDueServiceProvider.notifier)
            .getSelectedPaymentDue()
            ?.orders
            ?.map((e) => e.serviceName)
            .join(', ') ??
        '';
    ref.read(paymentServiceProvider.notifier).setPaymentDescription(service);
    ref
        .read(paymentConfigStateProvider.notifier)
        .setPaymentConfig(totalToPay: total);
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

                      if (result.status == PaymentStatus.paid) {
                        paymentRef.reset();
                        if (context.mounted) {
                          ref.invalidate(userPaymentsDueServiceProvider);
                          await ref
                              .watch(userPaymentsDueServiceProvider.future);
                          if (context.mounted) {
                            AppToast.successToast(
                                l10n.paymentIsDoneSuccessfully);
                            context.router.replaceAll([
                              const DashboardLayoutRoute(),
                            ]);
                          }
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
                              onComplete: (result) async {
                                logger.i('result: $result');
                                paymentRef.setPaymentRepId(result.id);
                                if (result.status == PaymentStatus.paid) {
                                  paymentRef.setPaymentStatus(true);
                                } else {
                                  paymentRef.setPaymentStatus(false);
                                }
                                if (result.status == PaymentStatus.paid) {
                                  paymentRef.reset();
                                  if (context.mounted) {
                                    ref.invalidate(
                                        userPaymentsDueServiceProvider);
                                    await ref.watch(
                                        userPaymentsDueServiceProvider.future);
                                    if (context.mounted) {
                                      AppToast.successToast(
                                          l10n.paymentIsDoneSuccessfully);
                                      context.router.replaceAll([
                                        const DashboardLayoutRoute(),
                                      ]);
                                    }
                                  }
                                } else {
                                  if (context.mounted) {
                                    context.router.maybePop();
                                    AppToast.errorToast(l10n.paymentFailed);
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
