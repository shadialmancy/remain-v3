import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../examination_offer/presentation/providers/examination_cart_provider.dart';
import '../../../offers/domain/entities/entities.dart';
import '../../../offers/presentation/provider/cart_provider.dart';
import '../../../offers/presentation/provider/offer_payments_service.dart';
import '../../../offers/presentation/provider/offers_card_payment_provider.dart';
import '../../widgets/widgets.dart';
import '../providers/tamara_payment_provider.dart';

class TamaraPaymentUi extends ConsumerWidget {
  const TamaraPaymentUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (_, l10n) = appSettingsRecord(context);
    final offerPayRef = ref.read(offersCardPaymentServiceProvider.notifier);

    return AsyncValueWidget(
      value: ref.watch(tamaraPaymentServiceProvider),
      data: (TamaraCheckoutResponseEntity? session) {
        final tamaraSession = ref
            .watch(tamaraPaymentServiceProvider.notifier)
            .gettamaraCheckoutSession();
        return SafeArea(
          child: CustomTamaraCheckout(
            tamaraSession?.checkoutUrl ?? '',
            'http://example.com/#/success',
            'http://example.com/#/fail',
            'http://example.com/#/cancel',
            onPaymentSuccess: () async {
              bool status = false;
              status = await offerPayRef.savepaymentWithWebHook();
              if (status) {
                await ref.read(cartServiceProvider.notifier).clearCart();
                await ref
                    .read(examinationCartServiceProvider.notifier)
                    .clearCart();
                ref
                    .read(offerPaymentsServiceProvider.notifier)
                    .clearTotalWithVat();
                if (context.mounted) {
                  AppToast.successToast(l10n
                      .congratulationsYourPaymentWithTamaraHasBeenConfirmed);
                  context.router.popUntilRoot();
                }
              } else {
                await ref.read(cartServiceProvider.notifier).clearCart();
                await ref
                    .read(examinationCartServiceProvider.notifier)
                    .clearCart();
                ref
                    .read(offerPaymentsServiceProvider.notifier)
                    .clearTotalWithVat();
                if (context.mounted) {
                  AppToast.errorToast(
                      l10n.paymentIsDoneButFailedToSaveTheTransaction);
                  context.router.popUntilRoot();
                }
              }
            },
            onPaymentCanceled: () {
              if (context.mounted) {
                AppToast.errorToast(l10n.yourPaymentIsRejected);
                context.router.popUntilRoot();
              }
            },
            onPaymentFailed: () {
              if (context.mounted) {
                AppToast.errorToast(l10n.yourPaymentIsRejected);
                context.router.popUntilRoot();
              }
            },
          ),
        );
      },
    );
  }
}
