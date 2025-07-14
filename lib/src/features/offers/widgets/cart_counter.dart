import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/features/offers/presentation/provider/cart_provider.dart';

import '../../../core/widgets/widgets.dart';
import '../domain/entities/offer_cart_entity/offer_cart_item.dart';
import '../presentation/provider/offer_payments_service.dart';

class CartCounter extends ConsumerStatefulWidget {
  const CartCounter({
    super.key,
    required this.cartItem,
  });
  final OfferCartItem cartItem;
  @override
  ConsumerState<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends ConsumerState<CartCounter> {
  int _count = 1;

  void _increase() async {
    final cartService = ref.watch(cartServiceProvider.notifier);
    final (_, l10n) = appSettingsRecord(context);
    if (cartService.checkAddedToCart(widget.cartItem) == 5) {
      AppToast.errorToast(l10n.theMaximumQuantityIsFive);
    } else {
      cartService.addToCart(widget.cartItem);
    }
    cartService.sumOfNumOfItemsCart();
    cartService.sumTotalAmount();
    await ref
        .read(offerPaymentsServiceProvider.notifier)
        .calcPaymentWithVat(totalAmount: cartService.totalAmount);
  }

  void _decrease() async {
    if (_count > 1) {
      final cartService = ref.watch(cartServiceProvider.notifier);
      cartService.decrementQuantity(widget.cartItem);
      cartService.sumOfNumOfItemsCart();
      cartService.sumTotalAmount();
      await ref
          .read(offerPaymentsServiceProvider.notifier)
          .calcPaymentWithVat();
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);
    _count = cartService.checkAddedToCart(widget.cartItem) ?? 0;
    return AsyncValueWidget(
        value: ref.watch(cartServiceProvider),
        data: (_) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.remove,
                    size: 20,
                    color: _count == 1
                        ? theme.dark52.withValues(alpha: 0.5)
                        : theme.dark52),
                onPressed: _count == 1 ? null : _decrease,
              ),
              Text(
                '${cartService.checkAddedToCart(widget.cartItem)}',
                style: theme.displaySmall.copyWith(
                  color: theme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  size: 20,
                  color: _count == 5
                      ? theme.dark52.withValues(alpha: 0.5)
                      : theme.dark52,
                ),
                onPressed: _count == 5 ? null : _increase,
              ),
            ],
          );
        });
  }
}
