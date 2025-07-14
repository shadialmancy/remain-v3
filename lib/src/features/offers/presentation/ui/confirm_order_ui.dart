import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remain/src/features/offers/presentation/provider/offer_payments_service.dart';
import 'package:remain/src/features/offers/presentation/provider/offers_card_payment_provider.dart';
import 'package:remain/src/features/offers/widgets/payment_method_tile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../../payments/domain/entities/calculate_payment_response_entity.dart';
import '../../../payments/presentation/providers/payments_service.dart';
import '../../../payments/presentation/providers/tabby_payment_provider.dart';
import '../../../payments/presentation/providers/tamara_payment_provider.dart';

class ConfirmOrderUi extends ConsumerStatefulWidget {
  const ConfirmOrderUi({super.key});

  @override
  ConsumerState<ConfirmOrderUi> createState() => _ConfirmOrderUiState();
}

class _ConfirmOrderUiState extends ConsumerState<ConfirmOrderUi> {
  int paymentMethod = 1;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.2.screenWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gapH24,
                  Text(
                    l10n.paymentMethod,
                    style: theme.titleSmall.copyWith(
                      color: theme.dark2E,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  gapH8,
                  PaymentMethodTile(
                    groupValue: paymentMethod,
                    icon: AssetsHelper.creditIcon,
                    onChanged: (value) {
                      setState(() {
                        paymentMethod = value ?? 1;
                      });
                    },
                    title: l10n.depiteCard,
                    value: 1,
                  ),
                  gapH16,
                  PaymentMethodTile(
                    groupValue: paymentMethod,
                    icon: AssetsHelper.tabbyIcon,
                    onChanged: (value) {
                      setState(() {
                        paymentMethod = value ?? 2;
                      });
                    },
                    title: l10n.tabby,
                    value: 2,
                  ),
                  gapH16,
                  PaymentMethodTile(
                    groupValue: paymentMethod,
                    icon: AssetsHelper.tamaraIcon,
                    onChanged: (value) {
                      setState(() {
                        paymentMethod = value ?? 3;
                      });
                    },
                    title: l10n.tamara,
                    value: 3,
                  ),
                  gapH32,
                  AsyncValueWidget(
                      value: ref.watch(offerPaymentsServiceProvider),
                      data: (CalculatePaymentResponseEntity? totalWithVat) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10n.receiptPrice,
                                  style: theme.titleSmall.copyWith(
                                    color: theme.primary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '${totalWithVat?.data?.recharging} ${l10n.sar2}',
                                  style: theme.titleSmall.copyWith(
                                    color: theme.primary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            gapH8,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10n.vat,
                                  style: theme.titleSmall.copyWith(
                                    color: theme.primary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '${totalWithVat?.data?.vat} ${l10n.sar2}',
                                  style: theme.titleSmall.copyWith(
                                    color: theme.primary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            gapH8,
                            Divider(
                              color: theme.greyD0,
                            ),
                            gapH8,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10n.totalPrice,
                                  style: theme.headlineSmall.copyWith(
                                    color: theme.primary,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  '${totalWithVat?.data?.total} ${l10n.sar2}',
                                  style: theme.titleSmall.copyWith(
                                    color: theme.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      })
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 3.9.screenHeight, horizontal: 5.3.screenWidth),
          child: CustomButton(
            width: double.infinity,
            title: l10n.performTheOrder,
            onPressed: () async {
              int? patientID = ref.watch(authUiServiceProvider).value?.id;
              if (patientID == null) {
                showLoginAlert(
                    context, l10n.youMustLoginFirstToProceedWithThePayment);
              } else {
                if (paymentMethod == 1) {
                  ref
                      .read(paymentServiceProvider.notifier)
                      .setPaymentDescription(l10n.paymentForOffersOrder);
                  ref
                      .read(offersCardPaymentServiceProvider.notifier)
                      .setPaymentMethod('card');
                  context.router.push(const OffersCardPaymentRoute());
                }
                if (paymentMethod == 2) {
                  ref
                      .read(offersCardPaymentServiceProvider.notifier)
                      .setPaymentMethod('tabby');
                  await ref
                      .read(tabbyPaymentServiceProvider.notifier)
                      .startPayment();
                  if (context.mounted) {
                    context.router.push(const TabbyPaymentRoute());
                  }
                }
                if (paymentMethod == 3) {
                  ref
                      .read(offersCardPaymentServiceProvider.notifier)
                      .setPaymentMethod('tamara');
                  await ref
                      .read(tamaraPaymentServiceProvider.notifier)
                      .startPayment();
                  if (context.mounted) {
                    context.router.push(const TamaraPaymentRoute());
                  }
                }
              }
            },
            titleStyle: theme.labelLarge.copyWith(
              color: theme.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
