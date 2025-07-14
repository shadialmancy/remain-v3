import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/examination_offer/presentation/ui/examinations_offer_details_ui.dart';
import '../features/offers/data/models/offers_dto/offers_data.dart';

@RoutePage()
class ExaminationsOfferDetailsScreen extends StatelessWidget {
  const ExaminationsOfferDetailsScreen({super.key, this.offerData});
  final OfferData? offerData;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.greyFA,
        backButton: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: theme.dark48,
          ),
          onPressed: () {
            context.router.maybePop();
          },
        ),
        centerTitle: true,
        title: Text(
          l10n.examinationDetails,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: ExaminationsOfferDetailsUi(
          offerData: offerData,
        ),
        tablet: ExaminationsOfferDetailsUi(
          offerData: offerData,
        ),
        desktop: ExaminationsOfferDetailsUi(
          offerData: offerData,
        ),
      ),
    );
  }
}
