import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../data/models/offers_dto/offers_data.dart';
import '../../widgets/widgets.dart';
import '../provider/cart_provider.dart';
import '../provider/offer_payments_service.dart';

class OfferDetailsUi extends ConsumerWidget {
  const OfferDetailsUi({super.key, this.offerData});
  final OfferData? offerData;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.2.screenWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OfferDetailsCard(
                    offerData: offerData,
                  ),
                  gapH16,
                  // Text(
                  //   l10n.featuresOfTheOffer,
                  //   style: theme.titleSmall.copyWith(
                  //     color: theme.greySE,
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  // ),
                  // gapH16,
                  // Text(
                  //   'يستخدم مصل الانفلونزا الموسمية انفلوفاك تترا للوقاية من انواع معينة من الانفلونزا يعمل اللقاح عن طريق جعل الجسم ينتج اجسام مضادة و خلق الحماية الخاصة به ضد اربعة انواع مختلفة من فيروسات الانفلونزا',
                  //   style: theme.titleSmall.copyWith(
                  //     color: theme.greySE,
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4.2.screenWidth,
            vertical: 5.4.screenHeight,
          ),
          child: CustomButton(
            width: double.infinity,
            title: l10n.addToCart,
            onPressed: () async {
              int? patientID = ref.watch(authUiServiceProvider).value?.id;
              if (patientID == null) {
                showLoginAlert(context,
                    l10n.youHaveToLoginFirstInOrderToAddThisItemInYourCart);
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
                  context.mounted ? context.router.maybePop() : null;
                }
              }
            },
            backgroundColor: theme.primary,
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
