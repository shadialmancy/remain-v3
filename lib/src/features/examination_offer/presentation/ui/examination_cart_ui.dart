import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remain/l10n/generated/l10n.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/examination_offer/presentation/providers/examination_cart_provider.dart';
import 'package:remain/src/features/offers/presentation/provider/offers_card_payment_provider.dart';
import 'package:remain/src/features/payments/presentation/providers/tabby_payment_provider.dart';
import 'package:remain/src/features/payments/presentation/providers/tamara_payment_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/themes/themes.dart';
import '../../../offers/domain/entities/offer_cart_entity/offer_cart_item.dart';
import '../../../offers/presentation/provider/offer_payments_service.dart';
import '../../../payments/domain/entities/calculate_payment_response_entity.dart';
import '../../widgets/widgets.dart';

class ExaminationCartUi extends ConsumerStatefulWidget {
  const ExaminationCartUi({
    super.key,
  });

  @override
  ConsumerState<ExaminationCartUi> createState() => _ExaminationCartUiState();
}

class _ExaminationCartUiState extends ConsumerState<ExaminationCartUi> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final (theme, l10n) = appSettingsRecord(context);
    return AsyncValueWidget(
        value: ref.watch(examinationCartServiceProvider),
        data: (List<OfferCartItem> cartList) {
          if (cartList.isEmpty) {
            return Center(
                child: Text(
              l10n.theCartIsEmpty,
              style: theme.bodyMedium,
            ));
          }
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gapH24,
                        Column(
                          children: List.generate(
                            cartList.length,
                            (index) {
                              return ExaminationCartTile(
                                offerItem: cartList[index],
                                index: index,
                              );
                            },
                          ),
                        ),
                        gapH16,
                        AsyncValueWidget(
                            value: ref.watch(offerPaymentsServiceProvider),
                            data:
                                (CalculatePaymentResponseEntity? totalWithVat) {
                              return Column(
                                children: [
                                  _cartPrices(
                                    title: l10n.receiptPrice,
                                    price: totalWithVat?.data?.recharging
                                            .toString() ??
                                        '0',
                                    theme: theme,
                                    l10n: l10n,
                                  ),
                                  gapH8,
                                  _cartPrices(
                                    title: l10n.vat,
                                    price: totalWithVat?.data?.vat.toString() ??
                                        '0',
                                    theme: theme,
                                    l10n: l10n,
                                  ),
                                  gapH8,
                                  Divider(
                                    color: theme.greyD0,
                                  ),
                                  gapH8,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                  title: l10n.confirmTheOrder,
                  onPressed: () {
                    ref
                        .read(offersCardPaymentServiceProvider.notifier)
                        .setIsDiagnosis(true);
                    ref
                        .read(tabbyPaymentServiceProvider.notifier)
                        .setIsDiagnosis(true);
                    ref
                        .read(tamaraPaymentServiceProvider.notifier)
                        .setIsDiagnosis(true);
                    context.router.push(const ConfirmOrderRoute());
                  },
                  titleStyle: theme.labelLarge.copyWith(
                    color: theme.white,
                    fontWeight: FontWeight.w500,
                  ),
                  backgroundColor: theme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

Widget _cartPrices(
    {required String title,
    required String price,
    required FlutterFlowTheme theme,
    required AppLocalizations l10n}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: theme.titleSmall.copyWith(
          color: theme.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
      Text(
        '$price ${l10n.sar2}',
        style: theme.titleSmall.copyWith(
          color: theme.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
