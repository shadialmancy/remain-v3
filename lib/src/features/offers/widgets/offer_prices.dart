import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class OfferPrices extends StatelessWidget {
  const OfferPrices({
    super.key,
    required this.priceBeforeDiscount,
    required this.priceAfterDiscount,
  });
  final String? priceBeforeDiscount;
  final String? priceAfterDiscount;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$priceAfterDiscount ${l10n.sar2}',
            style: theme.labelMedium.copyWith(
              color: theme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(
            text: '  ',
          ),
          TextSpan(
            text: '${priceBeforeDiscount ?? ''} ${l10n.sar2}',
            style: theme.labelMedium.copyWith(
              color: theme.greyB3B,
              fontSize: 10,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}
