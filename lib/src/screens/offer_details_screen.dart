import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/offers/presentation/ui/offer_details_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/offers/data/models/offers_dto/offers_data.dart';

@RoutePage()
class OfferDetailsScreen extends StatelessWidget {
  const OfferDetailsScreen({super.key, this.offerData});
  final OfferData? offerData;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.primaryBackground,
        title: Text(
          l10n.viewTheOffer,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: OfferDetailsUi(
          offerData: offerData,
        ),
        tablet: OfferDetailsUi(
          offerData: offerData,
        ),
        desktop: OfferDetailsUi(
          offerData: offerData,
        ),
      ),
    );
  }
}
