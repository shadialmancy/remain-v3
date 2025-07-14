import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/widgets/custom_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';

class LifeCareBannerCard extends StatelessWidget {
  const LifeCareBannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xff98ADEE).withAlpha(0), // more correct
            width: 1,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -7.6.screenHeight,
              left: 0,
              child: SvgPicture.asset(
                AssetsHelper.bottomLogo,
                fit: BoxFit.contain,
                width: 48.screenWidth,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 2.6.screenWidth,
                vertical: 1.9.screenHeight,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.instantConsultationWithLifeCare,
                          style: theme.labelLarge.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff0D205B),
                          ),
                        ),
                        gapH4,
                        SizedBox(
                          width: 50.screenWidth,
                          child: Text(
                            l10n.youCanConsultASpecialistDoctorViaVideoThroughLifeCareFeature,
                            style: theme.labelLarge.copyWith(
                              fontWeight: FontWeight.w400,
                              color: theme.grey8080,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapW12,
                  CustomButton(
                    onPressed: () {},
                    width: 29.screenWidth,
                    height: 35,
                    backgroundColor: const Color(0xffBACBE3),
                    title: l10n.bookAppointment,
                    titleStyle: theme.labelMedium.copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff0D205B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
