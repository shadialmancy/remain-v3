import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/features/examination_offer/presentation/providers/examination_cart_provider.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/assets_helper.dart';
import '../../../core/widgets/widgets.dart';
import '../../authentication/presentation/provider/auth_ui_service.dart';
import '../../offers/data/models/offers_dto/offers_data.dart';
import '../../offers/presentation/provider/offer_payments_service.dart';

class ExaminationAddCartButton extends ConsumerStatefulWidget {
  const ExaminationAddCartButton(
      {super.key, required this.index, required this.offerData});
  final OfferData? offerData;
  final int index;

  @override
  ConsumerState<ExaminationAddCartButton> createState() =>
      _ExaminationAddCartButtonState();
}

class _ExaminationAddCartButtonState
    extends ConsumerState<ExaminationAddCartButton> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final cartService = ref.watch(examinationCartServiceProvider.notifier);
    final cartItem =
        cartService.castingOfferDataToOfferCartItem(widget.offerData);
    return AsyncValueWidget(
        value: ref.watch(examinationCartServiceProvider),
        data: (_) {
          return InkWell(
            onTap: cartService.getOfferCartItemsList().contains(cartItem)
                ? null
                : () async {
                    int? patientID = ref.watch(authUiServiceProvider).value?.id;
                    if (patientID == null) {
                      showLoginAlert(context,
                          l10n.youHaveToLoginFirstInOrderToAddThisItemInYourCart);
                    } else {
                      cartService.addToCart(cartItem);
                      cartService.sumOfNumOfItemsCart();
                      cartService.sumTotalAmount();
                      await ref
                          .read(offerPaymentsServiceProvider.notifier)
                          .calcPaymentWithVat(
                              totalAmount: cartService.totalAmount);
                      AppToast.successToast(
                          l10n.theItemHasBeenAddedSuccessfully);
                    }
                  },
            child: cartService.getOfferCartItemsList().contains(cartItem)
                ? SvgPicture.asset(
                    AssetsHelper.checkWithCartIcon,
                    width: 18,
                    colorFilter:
                        ColorFilter.mode(theme.primary, BlendMode.srcIn),
                  )
                : SvgPicture.asset(
                    AssetsHelper.cartIcon2,
                  ),
          );
        });
  }
}
