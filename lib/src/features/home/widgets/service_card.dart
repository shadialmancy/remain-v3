import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../core/constants/constants.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isComingSoon = false,
  });

  final String title;
  final String? icon;
  final Function() onTap;
  final bool? isComingSoon;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Container(
            alignment: Alignment.center,
            width: 26.9.screenWidth,
            height: 9.8.screenHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  icon ?? '',
                ),
                gapH8,
                Text(
                  title,
                  style: theme.labelMedium.copyWith(
                    fontWeight: FontWeight.w500,
                    color: theme.dark2E,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        if (isComingSoon ?? false)
          Positioned(
            top: 4,
            left: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                color: const Color(0xffF9C5C8),
                borderRadius: BorderRadius.circular(48),
              ),
              child: Text(
                l10n.soon,
                style: theme.labelSmall.copyWith(
                  color: const Color(0xff631D21),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
