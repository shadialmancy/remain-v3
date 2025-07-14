import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/app_strings.dart';
import '../core/constants/constants.dart';
import '../core/localization/locale_constants.dart';
import '../features/maps/data/models/map_location_dto/location_data.dart';
import '../features/maps/presentation/ui/map_direction_ui.dart';

@RoutePage()
class MapDirectionsScreen extends StatefulWidget {
  const MapDirectionsScreen({
    super.key,
    required this.locationData,
  });
  final LocationData? locationData;

  @override
  State<MapDirectionsScreen> createState() => _MapDirectionsScreenState();
}

class _MapDirectionsScreenState extends State<MapDirectionsScreen> {
  String? lang;

  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en'
            ? AppStrings.en.toLowerCase()
            : AppStrings.ar.toLowerCase();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AppBar(
              backgroundColor: Colors.white.withValues(alpha: 0.08),
              elevation: 0,
              centerTitle: true,
              title: Text(
                lang == AppStrings.en
                    ? (widget.locationData?.locationEn ?? '')
                    : (widget.locationData?.locationAr ?? ''),
                style: theme.titleMedium.copyWith(
                  color: theme.dark48,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: IconButton(
                onPressed: () => context.router.maybePop(),
                icon: Icon(
                  Icons.arrow_back,
                  color: theme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: MapDirectionUi(
          locationData: widget.locationData,
        ),
        tablet: MapDirectionUi(
          locationData: widget.locationData,
        ),
        desktop: MapDirectionUi(
          locationData: widget.locationData,
        ),
      ),
    );
  }
}
