import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/offers/presentation/ui/offer_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.primaryBackground,
        title: Text(
          l10n.offers,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const OfferUi(),
        tablet: const OfferUi(),
        desktop: const OfferUi(),
      ),
    );
  }
}
