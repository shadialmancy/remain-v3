import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../core/constants/constants.dart';

class ReadMoreWidget extends StatelessWidget {
  const ReadMoreWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return ReadMoreText(
      text,
      trimMode: TrimMode.Length,
      trimLength: text.length > 40 ? 35 : text.length,
      colorClickableText: const Color(0xff4A4A4A),
      trimCollapsedText: l10n.readMore,
      trimExpandedText: l10n.readLess,
      moreStyle: theme.labelMedium.copyWith(
        color: const Color(0xff4A4A4A),
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
      lessStyle: theme.labelMedium.copyWith(
        color: const Color(0xff4A4A4A),
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
      style: theme.labelMedium.copyWith(
        color: theme.grey8080,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
