import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:badges/badges.dart' as badges;
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/offers/presentation/provider/cart_provider.dart';

class CartDisplayCounter extends ConsumerStatefulWidget {
  const CartDisplayCounter({super.key});

  @override
  ConsumerState<CartDisplayCounter> createState() => _CartDisplayCounterState();
}

class _CartDisplayCounterState extends ConsumerState<CartDisplayCounter> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final cartServie = ref.watch(cartServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(cartServiceProvider),
        data: (_) {
          return InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              context.router.push(const CartRoute());
            },
            child: badges.Badge(
              badgeContent: Text(
                cartServie.numOfItems.toString(),
                style: theme.labelMedium.copyWith(
                  color: theme.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              position: badges.BadgePosition.topStart(top: -12, start: -12),
              child: SvgPicture.asset(
                AssetsHelper.cartIcon,
                height: 24,
                width: 24,
              ),
            ),
          );
        });
  }
}
