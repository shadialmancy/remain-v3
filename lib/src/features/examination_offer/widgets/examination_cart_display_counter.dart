import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:badges/badges.dart' as badges;
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/examination_offer/presentation/providers/examination_cart_provider.dart';

class ExaminationCartDisplayCounter extends ConsumerStatefulWidget {
  const ExaminationCartDisplayCounter({super.key});

  @override
  ConsumerState<ExaminationCartDisplayCounter> createState() =>
      _ExaminationCartDisplayCounterState();
}

class _ExaminationCartDisplayCounterState
    extends ConsumerState<ExaminationCartDisplayCounter> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return AsyncValueWidget(
        value: ref.watch(examinationCartServiceProvider),
        data: (_) {
          return InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              context.router.push(const ExaminationsCartRoute());
            },
            child: badges.Badge(
              badgeContent: Text(
                ref
                    .watch(examinationCartServiceProvider.notifier)
                    .numOfItems
                    .toString(),
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
