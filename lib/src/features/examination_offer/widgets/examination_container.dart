import 'package:flutter/material.dart';
import 'package:remain/src/features/examination_offer/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';
import '../../../core/localization/localizations.dart';
import '../../../core/widgets/widgets.dart';
import '../../offers/data/models/offers_dto/offers_data.dart';

class ExaminationContainer extends StatefulWidget {
  const ExaminationContainer(
      {super.key, required this.index, required this.offerData});
  final OfferData? offerData;
  final int index;

  @override
  State<ExaminationContainer> createState() => _ExaminationContainerState();
}

class _ExaminationContainerState extends State<ExaminationContainer> {
  String _language = '';
  Future<void> getAppLocale() async {
    _language = await getLocale().then((value) {
      return value.languageCode.toLowerCase();
    });
    setState(() {});
  }

  @override
  void initState() {
    getAppLocale();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Container(
      padding: EdgeInsets.only(left: 3.sw, right: 3.sw),
      decoration: BoxDecoration(
          color: theme.white,
          borderRadius: AppSizes.borderRadius4,
          boxShadow: [
            BoxShadow(
                color: theme.primary.withValues(alpha: 0.14),
                blurRadius: 16,
                offset: Offset(4, 4))
          ]),
      child: Column(
        children: [
          CachedImages(
            img: widget.offerData?.programImage,
            widget: Container(
              // width: 23.7.screenWidth,
              height: 9.7.screenHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.54),
                image: DecorationImage(
                  image: NetworkImage(
                    widget.offerData?.programImage ?? '',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          gapH12,
          Text(
            _language == 'en'
                ? (widget.offerData?.programName?.length ?? 0) > 15
                    ? "${widget.offerData?.programName?.substring(0, 14)}..."
                    : widget.offerData?.programName ?? ""
                : (widget.offerData?.programArbName?.length ?? 0) > 15
                    ? "${widget.offerData?.programArbName?.substring(0, 14)}..."
                    : widget.offerData?.programArbName ?? "",
            style: theme.labelLarge.copyWith(
              color: theme.dark2E,
            ),
            textAlign: TextAlign.center,
          ),
          gapH8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Row(
                  children: [
                    Text(
                      "${widget.offerData?.afterDiscount.toString()} ${l10n.sar2}",
                      style: theme.labelLarge.copyWith(
                          color: theme.primary, fontWeight: FontWeight.w500),
                    ),
                    gapW8,
                    Text(
                      widget.offerData?.beforeDiscount.toString() ?? '',
                      style: theme.labelSmall.copyWith(
                          color: theme.greyB3B,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: ExaminationAddCartButton(
                  index: widget.index, offerData: widget.offerData))
        ],
      ),
    );
  }
}
