import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/routes/app_router.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: SvgPicture.asset(
              AssetsHelper.settingsIcon2,
            ),
            onPressed: () {
              context.router.push(const SettingsRoute());
            },
          ),
        ),
        gapW4,
        SvgPicture.asset(
          AssetsHelper.notificationIcon,
        ),
      ],
    );
  }
}
