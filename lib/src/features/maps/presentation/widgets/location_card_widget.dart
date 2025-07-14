import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/localization/locale_constants.dart';
import '../../../../core/routes/app_router.dart';
import '../../data/models/map_location_dto/location_data.dart';

class LocationCardWidget extends StatefulWidget {
  final LocationData? locationData;

  const LocationCardWidget({
    super.key,
    required this.locationData,
  });

  @override
  State<LocationCardWidget> createState() => _LocationCardWidgetState();
}

class _LocationCardWidgetState extends State<LocationCardWidget> {
  String? lang;

  Future<void> getAppLocale() async {
    final locale = await getLocale();
    setState(() {
      lang = locale.languageCode == 'en'
          ? AppStrings.en.toLowerCase()
          : AppStrings.ar.toLowerCase();
    });
  }

  @override
  void initState() {
    super.initState();
    getAppLocale();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return InkWell(
      onTap: () {
        context.router.push(MapDirectionsRoute(
          locationData: widget.locationData,
        ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title (location name)
                  Text(
                    lang == AppStrings.en
                        ? (widget.locationData?.locationEn ?? '')
                        : (widget.locationData?.locationAr ?? ''),
                    style: theme.labelLarge.copyWith(
                      fontWeight: FontWeight.w500,
                      color: theme.dark18,
                    ),
                  ),
                  gapH8,

                  // Address and Phone in same row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Location Icon + Address
                      SvgPicture.asset(AssetsHelper.ourLocationIcon),
                      gapW4,
                      Expanded(
                        flex: 1,
                        child: Text(
                          widget.locationData?.locationAddress ?? '',
                          style: theme.labelMedium.copyWith(
                            color: theme.grey8080,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      gapW12,

                      SvgPicture.asset(AssetsHelper.phoneIcon),
                      gapW4,
                      Text(
                        widget.locationData?.phoneNum ?? '',
                        style: theme.labelMedium.copyWith(
                          color: theme.grey8080,
                          fontWeight: FontWeight.w400,
                        ),
                        textDirection: TextDirection.ltr,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 15),
          ],
        ),
      ),
    );
  }
}
