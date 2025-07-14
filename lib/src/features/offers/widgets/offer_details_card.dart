import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:remain/src/core/constants/app_strings.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';
import '../../../core/localization/localizations.dart';
import '../../../core/widgets/widgets.dart';
import '../data/models/offers_dto/offers_data.dart';

class OfferDetailsCard extends StatefulWidget {
  const OfferDetailsCard({super.key, this.offerData});
  final OfferData? offerData;

  @override
  State<OfferDetailsCard> createState() => _OfferDetailsCardState();
}

class _OfferDetailsCardState extends State<OfferDetailsCard> {
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
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffFDFEFF),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.2.screenWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CachedImages(
                    img: widget.offerData?.programImage,
                    widget: Image.network(
                      widget.offerData?.programImage ?? '',
                      width: double.infinity,
                      height: 60.5.screenWidth,
                      fit: BoxFit.cover,
                    ),
                    width: double.infinity,
                    height: 60.5.screenWidth,
                  ),
                ),
                gapH32,
                Text(
                  _language == AppStrings.ar
                      ? widget.offerData?.programArbName ?? ''
                      : widget.offerData?.programName ?? '',
                  style: theme.titleSmall.copyWith(
                    color: theme.blue013,
                  ),
                ),
                gapH12,
                //   gapH64,
                RichText(
                  text: TextSpan(
                    text: '${l10n.price}:\t',
                    style: theme.labelMedium.copyWith(
                      color: theme.purple90,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text:
                            '${widget.offerData?.afterDiscount} ${l10n.sar2} \t',
                        style: theme.titleSmall.copyWith(
                          color: theme.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text:
                            '${widget.offerData?.beforeDiscount} ${l10n.sar2}',
                        style: theme.titleSmall.copyWith(
                          color: theme.error,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
                gapH12,
              ],
            ),
          ),
        ),
        gapH12,
        widget.offerData?.offerdetailsAR != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.5.screenWidth),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.offerDetails,
                      style: theme.titleSmall.copyWith(
                        color: theme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    gapH12,
                    Html(
                      data: _language == AppStrings.ar
                          ? widget.offerData?.offerdetailsAR ?? ''
                          : widget.offerData?.offerdetailsEN ?? '',
                      style: {
                        'body': Style(
                          fontSize: FontSize(12),
                          color: theme.fullDark,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppStrings.arabicFont,
                        ),
                      },
                    ),
                  ],
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
