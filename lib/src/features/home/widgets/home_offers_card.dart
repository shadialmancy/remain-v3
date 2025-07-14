import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/widgets/custom_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/routes/app_router.dart';

class HomeOffersCard extends StatelessWidget {
  const HomeOffersCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return InkWell(
      onTap: () {
        context.router.push(const OffersRoute());
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 2.4.screenWidth, vertical: 2.1.screenHeight),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff742E89),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -10,
              right: -20,
              child: Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  AssetsHelper.logoR,
                  width: 30,
                ),
              ),
            ),
            Positioned(
              top: -10,
              left: -20,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  AssetsHelper.logoL,
                  width: 30,
                ),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  AssetsHelper.offerLogo,
                ),
                gapW4,
                Expanded(
                  child: Text(
                    l10n.getTheBestDealsOnMedicalServices,
                    style: theme.labelMedium.copyWith(
                      color: theme.blueF4,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      height: 1.7,
                    ),
                  ),
                ),
                gapW4,
                CustomButton(
                  width: 24.5.screenWidth,
                  height: 3.9.screenHeight,
                  onPressed: () {},
                  backgroundColor: theme.greyFA,
                  title: l10n.browseTheOffers,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: theme.blueF4,
                      width: 1,
                    ),
                  ),
                  titleStyle: theme.labelMedium.copyWith(
                    color: const Color(0xff742E89),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
