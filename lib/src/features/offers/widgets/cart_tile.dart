import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/constants/app_strings.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/offers/presentation/provider/cart_provider.dart';
import 'package:remain/src/features/offers/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/localization/localizations.dart';
import '../domain/entities/offer_cart_entity/offer_cart_item.dart';

class CartTile extends ConsumerStatefulWidget {
  const CartTile({
    super.key,
    required this.cartItem,
    required this.index,
  });
  final OfferCartItem cartItem;
  final int index;
  @override
  ConsumerState<CartTile> createState() => _CartTileState();
}

class _CartTileState extends ConsumerState<CartTile> {
  String _language = '';
  Future<void> getAppLocale() async {
    _language = await getLocale().then((value) {
      return value.languageCode.toUpperCase();
    });
    setState(() {});
  }

  @override
  void initState() {
    getAppLocale();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(cartServiceProvider),
        data: (_) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 1.sh),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xffE1E9F1),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 4.2.screenWidth, vertical: 1.9.screenHeight),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CachedImages(
                        img: widget.cartItem.programImage,
                        widget: Container(
                          width: 13.06.screenWidth,
                          height: 13.06.screenWidth,
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: NetworkImage(widget
                                      .cartItem.programImage ??
                                  'https://img.pikbest.com/origin/09/30/68/06CpIkbEsTjEu.png!bw700'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      gapW16,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _language == AppStrings.ar
                                  ? widget.cartItem.programArbName ?? ''
                                  : widget.cartItem.programName ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.labelLarge.copyWith(
                                color: theme.grey82,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // gapH16,
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          cartService.removeFromCart(widget.index);
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '${l10n.price}: ',
                          style: theme.labelMedium.copyWith(
                            color: theme.purple90,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '${(widget.cartItem.afterDiscount ?? 0) * (cartService.checkAddedToCart(cartService.getOfferCartItemsList()[widget.index]) ?? 0)} ${l10n.sar2}',
                              style: theme.headlineSmall.copyWith(
                                color: theme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      gapW16,
                      CartCounter(
                        cartItem: widget.cartItem,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
