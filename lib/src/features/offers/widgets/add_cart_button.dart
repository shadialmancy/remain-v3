import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/helpers/assets_helper.dart';
import '../../../core/widgets/widgets.dart';
import '../../authentication/presentation/provider/auth_ui_service.dart';
import '../data/models/offers_dto/offers_data.dart';
import '../presentation/provider/cart_provider.dart';
import '../presentation/provider/offer_payments_service.dart';

class AddCartButton extends ConsumerWidget {
  const AddCartButton({super.key, required this.offerData});
  final OfferData? offerData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (_, l10n) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);

    return InkWell(
      onTap: () async {
        int? patientID = ref.watch(authUiServiceProvider).value?.id;
        if (patientID == null) {
          showLoginAlert(
              context, l10n.youHaveToLoginFirstInOrderToAddThisItemInYourCart);
        } else {
          final cartItem =
              cartService.castingOfferDataToOfferCartItem(offerData);
          if (cartService.checkAddedToCart(cartItem) == 5) {
            AppToast.errorToast(l10n.theMaximumQuantityIsFive);
          } else {
            cartService.addToCart(cartItem);
            cartService.sumOfNumOfItemsCart();
            cartService.sumTotalAmount();
            await ref
                .read(offerPaymentsServiceProvider.notifier)
                .calcPaymentWithVat(totalAmount: cartService.totalAmount);
            AppToast.successToast(l10n.theItemHasBeenAddedSuccessfully);
          }
        }
      },
      child: SvgPicture.asset(AssetsHelper.cartIcon2),
    );
  }
}
