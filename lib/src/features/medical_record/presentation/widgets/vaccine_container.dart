import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';

class VaccineContainer extends StatelessWidget {
  const VaccineContainer({super.key, this.isVerified});
  final bool? isVerified;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.5.sw, vertical: 3.sw),
      margin: EdgeInsets.only(bottom: 1.sh),
      decoration: BoxDecoration(
          color: theme.greyFA,
          borderRadius: AppSizes.borderRadius8,
          boxShadow: [
            BoxShadow(
                blurRadius: 8, color: theme.fullDark.withValues(alpha: 0.1))
          ]),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(AssetsHelper.clockOutlinedIcon),
              gapW8,
              Text(
                " 10 AM, الثلاثاء 3 يناير",
                style: theme.bodySmall.copyWith(color: theme.primary),
              ),
              const Spacer(),
              SvgPicture.asset(isVerified ?? false
                  ? AssetsHelper.tickCircleSuccessIcon
                  : AssetsHelper.tickCircleIcon),
            ],
          ),
          Divider(
            color: theme.whiteE7,
            thickness: 1,
          ),
          Row(
            children: [
              SvgPicture.asset(AssetsHelper.bloodTest2Icon),
              gapW8,
              Text(
                "تحليل صورة دم كاملة",
                style: theme.bodySmall.copyWith(color: theme.grey8080),
              ),
            ],
          )
        ],
      ),
    );
  }
}
