import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/examination_offer/presentation/providers/examination_cart_provider.dart';
import 'package:remain/src/features/offers/data/models/offers_dto/offers_data.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../../offers/presentation/provider/offer_payments_service.dart';
import '../../../offers/widgets/widgets.dart';

class ExaminationsOfferDetailsUi extends ConsumerStatefulWidget {
  const ExaminationsOfferDetailsUi({super.key, this.offerData});
  final OfferData? offerData;

  @override
  ConsumerState<ExaminationsOfferDetailsUi> createState() =>
      _ExaminationsOfferDetailsUiState();
}

class _ExaminationsOfferDetailsUiState
    extends ConsumerState<ExaminationsOfferDetailsUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final cartService = ref.watch(examinationCartServiceProvider.notifier);
    final cartItem =
        cartService.castingOfferDataToOfferCartItem(widget.offerData);

    return AsyncValueWidget(
      value: ref.watch(examinationCartServiceProvider),
      data: (_) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      gapH12,
                      Align(
                        alignment: Alignment.center,
                        child: OfferDetailsCard(
                          offerData: widget.offerData,
                        ),
                      ),
                      gapH16,
                      gapH64,
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.sw),
                child: CustomButton(
                  width: double.infinity,
                  isDisabled:
                      cartService.getOfferCartItemsList().contains(cartItem),
                  title: cartService.getOfferCartItemsList().contains(cartItem)
                      ? l10n.thisItemIsAlreadyInTheCart
                      : l10n.addToCart,
                  onPressed: () async {
                    int? patientID = ref.watch(authUiServiceProvider).value?.id;
                    if (patientID == null) {
                      showLoginAlert(
                        context,
                        l10n.youHaveToLoginFirstInOrderToAddThisItemInYourCart,
                      );
                    } else {
                      cartService.addToCart(cartItem);
                      cartService.sumOfNumOfItemsCart();
                      cartService.sumTotalAmount();
                      await ref
                          .read(offerPaymentsServiceProvider.notifier)
                          .calcPaymentWithVat(
                            totalAmount: cartService.totalAmount,
                          );
                      AppToast.successToast(
                        l10n.theItemHasBeenAddedSuccessfully,
                      );
                    }
                  },
                  titleStyle: theme.titleSmall.copyWith(
                    color: theme.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
