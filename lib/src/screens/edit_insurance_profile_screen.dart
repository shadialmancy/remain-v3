import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/medical_record/presentation/ui/edit_insurance_profile_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class EditInsuranceProfileScreen extends StatelessWidget {
  const EditInsuranceProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        title: Text(
          l10n.yourInsuranceInformation,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const EditInsuranceProfileUi(),
        tablet: const EditInsuranceProfileUi(),
        desktop: const EditInsuranceProfileUi(),
      ),
    );
  }
}
