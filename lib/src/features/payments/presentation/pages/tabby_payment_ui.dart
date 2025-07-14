import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tabby_flutter_inapp_sdk/tabby_flutter_inapp_sdk.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../examination_offer/presentation/providers/examination_cart_provider.dart';
import '../../../offers/presentation/provider/cart_provider.dart';
import '../../../offers/presentation/provider/offer_payments_service.dart';
import '../../../offers/presentation/provider/offers_card_payment_provider.dart';
import '../providers/tabby_payment_provider.dart';

class TabbyPaymentUi extends ConsumerWidget {
  const TabbyPaymentUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (_, l10n) = appSettingsRecord(context);
    final offerPayRef = ref.read(offersCardPaymentServiceProvider.notifier);

    return AsyncValueWidget(
      value: ref.watch(tabbyPaymentServiceProvider),
      data: (TabbySession? session) {
        final tabbySession =
            ref.read(tabbyPaymentServiceProvider.notifier).getSession();
        if (tabbySession == null) {
          return const SizedBox();
        }

        return SafeArea(
          child: TabbyWebView(
            webUrl: tabbySession.availableProducts.installments?.webUrl ?? '',
            onResult: (WebViewResult resultCode) async {
              logger.w('Tabby Payment Result: $resultCode');
              if (resultCode == WebViewResult.authorized) {
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
                        .congratulationsYourPaymentWithTabbyHasBeenConfirmed);
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
              } else if (resultCode == WebViewResult.rejected) {
                if (context.mounted) {
                  AppToast.errorToast(l10n.yourPaymentIsRejected);
                  context.router.popUntilRoot();
                }
              } else if (resultCode == WebViewResult.close) {
                if (context.mounted) {
                  AppToast.errorToast(l10n.yourPaymentIsRejected);
                  context.router.popUntilRoot();
                }
              }
              ref.read(tabbyPaymentServiceProvider.notifier).clearSession();
            },
          ),
        );
      },
    );
  }
}
