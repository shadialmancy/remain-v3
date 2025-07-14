import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/widgets.dart';
import '../../offers/data/models/offers_dto/offers_data.dart';

class ExaminationDetailsContainer extends StatelessWidget {
  const ExaminationDetailsContainer({super.key, required this.offerData});
  final OfferData? offerData;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      padding: EdgeInsets.all(3.sw),
      decoration: BoxDecoration(
        borderRadius: AppSizes.borderRadius4,
      ),
      child: Column(
        children: [
          CachedImages(
            img: offerData?.programImage,
            widget: Container(
              width: 23.7.screenWidth,
              height: 9.7.screenHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.54),
                image: DecorationImage(
                  image: NetworkImage(
                    offerData?.programImage ?? '',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          gapH12,
          Text(
            offerData?.programName ?? "",
            style: theme.labelLarge.copyWith(
              color: theme.dark2E,
            ),
            textAlign: TextAlign.center,
          ),
          gapH8,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${offerData?.afterDiscount.toString()} ${l10n.sar}",
                style: theme.titleSmall.copyWith(
                    color: theme.primary, fontWeight: FontWeight.w500),
              ),
              gapW12,
              Text(
                offerData?.beforeDiscount.toString() ?? '',
                style: theme.labelSmall.copyWith(
                    color: theme.greyB3B,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.lineThrough),
              ),
            ],
          )
        ],
      ),
    );
  }
}
