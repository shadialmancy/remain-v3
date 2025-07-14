import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/examination_offer/presentation/ui/examination_cart_ui.dart';

@RoutePage()
class ExaminationsCartScreen extends StatelessWidget {
  const ExaminationsCartScreen({super.key});
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
          l10n.examinations,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ExaminationCartUi(),
        tablet: const ExaminationCartUi(),
        desktop: const ExaminationCartUi(),
      ),
    );
  }
}
