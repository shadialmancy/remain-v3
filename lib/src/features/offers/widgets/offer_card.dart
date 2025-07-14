import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/constants/app_strings.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/offers/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/localization/localizations.dart';
import '../../../core/routes/app_router.dart';
import '../data/models/offers_dto/offers_data.dart';

class OfferCard extends StatefulWidget {
  const OfferCard({super.key, this.offerData});
  final OfferData? offerData;

  @override
  State<OfferCard> createState() => _OfferCardState();
}

class _OfferCardState extends State<OfferCard> {
  String _language = '';
  Future<void> getAppLocale() async {
    _language = await getLocale().then((value) {
      return value.languageCode.toUpperCase();
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
    final (theme, _) = appSettingsRecord(context);

    return InkWell(
      onTap: () {
        context.router.push(OfferDetailsRoute(offerData: widget.offerData));
      },
      child: Container(
        width: 23.7.screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.54),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.07),
              spreadRadius: 0,
              blurRadius: 8.26,
              offset: const Offset(0, 0.91),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.1.screenWidth,
            vertical: 1.2.screenHeight,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CachedImages(
                  img: widget.offerData?.programImage,
                  height: 9.7.screenHeight,
                  widget: Container(
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
              ),
              gapH12,
              Text(
                _language == AppStrings.arabicFont
                    ? widget.offerData?.programArbName ?? ''
                    : widget.offerData?.programName ?? '',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: theme.labelMedium.copyWith(
                  color: theme.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              gapH4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OfferPrices(
                    priceBeforeDiscount:
                        widget.offerData?.beforeDiscount.toString(),
                    priceAfterDiscount:
                        widget.offerData?.afterDiscount.toString(),
                  ),
                  AddCartButton(
                    offerData: widget.offerData,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
