import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';
import '../helpers/assets_helper.dart';
import '../routes/app_router.dart';
import 'widgets.dart';

Future<Future> showLoginAlert(BuildContext context, String text) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      final (theme, l10n) = appSettingsRecord(context);

      return AlertDialog(
        backgroundColor: theme.whiteColor,
        scrollable: true,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AssetsHelper.infoIcon),
            Text(
              text,
              style: theme.headlineSmall.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        actions: [
          Column(
            children: [
              CustomButton(
                width: double.infinity,
                title: l10n.login,
                titleStyle: theme.bodyMedium.copyWith(color: theme.whiteColor),
                backgroundColor: theme.primary,
                onPressed: () {
                  context.router.popAndPush(const LoginRoute());
                },
              ),
            ],
          )
        ],
      );
    },
  );
}
