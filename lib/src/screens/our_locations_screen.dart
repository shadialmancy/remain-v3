import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/maps/presentation/ui/our_locations_ui.dart';

@RoutePage()
class OurLocationsScreen extends StatelessWidget {
  const OurLocationsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.primaryBackground,
        title: Text(
          l10n.ourLocations,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const OurLocationsUi(),
        tablet: const OurLocationsUi(),
        desktop: const OurLocationsUi(),
      ),
    );
  }
}
