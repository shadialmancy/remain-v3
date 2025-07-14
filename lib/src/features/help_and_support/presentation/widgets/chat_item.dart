import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class ChatItem extends StatelessWidget {
  ChatItem({super.key});

  final List<String> fakeMessages = [
    'يرجي الراحة التامة مع الالتزام بمواعيد الأدوية',
  ];

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(fakeMessages.length, (index) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.sw),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetsHelper.remainLogoIcon,
                      width: 10.sw, height: 10.sw),
                  gapW12,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AssetsHelper.remainWriteIcon,
                            width: 5.sw, height: 5.sw),
                        gapH4,
                        Text(
                          fakeMessages[index],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.labelMedium.copyWith(
                            color: theme.grey86,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '12:00',
                        style: theme.labelMedium.copyWith(
                          color: theme.grey86,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      gapH8,
                      CircleAvatar(
                        radius: 2.sw,
                        backgroundColor: theme.purple6D,
                        child: Text(
                          '1',
                          style: theme.labelMedium.copyWith(
                            color: theme.whiteColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: theme.greyD0,
              thickness: 1,
            ),
          ],
        );
      }),
    );
  }
}
