import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/examination_offer/presentation/ui/examinations_offer_home_ui.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/examination_offer/widgets/widgets.dart';

@RoutePage()
class ExaminationsOfferHomeScreen extends StatelessWidget {
  const ExaminationsOfferHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.greyFA,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.sw),
            child: const ExaminationCartDisplayCounter(),
          ),
        ],
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
          l10n.examinations,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ExaminationsOfferHomeUi(),
        tablet: const ExaminationsOfferHomeUi(),
        desktop: const ExaminationsOfferHomeUi(),
      ),
    );
  }
}
