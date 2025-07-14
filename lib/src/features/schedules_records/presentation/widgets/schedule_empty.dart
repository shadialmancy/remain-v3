import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScheduleEmpty extends StatelessWidget {
  const ScheduleEmpty({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return SizedBox(
      height: 26.sh,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
              bottom: 70,
              right: 70,
              child: SvgPicture.asset(
                AssetsHelper.scheduleEmptyBackground,
                width: 40.sw,
              )),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AssetsHelper.scheduleEmpty),
              gapH12,
              Text(
                title,
                style: theme.bodyMediumSecondary
                    .copyWith(fontSize: 17, color: theme.grey8080),
              )
            ],
          ),
        ],
      ),
    );
  }
}
