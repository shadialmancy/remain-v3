import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/medical_record/presentation/ui/medical_record_home_ui.dart';

@RoutePage()
class MedicalRecordScreen extends StatelessWidget {
  const MedicalRecordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        title: Text(
          l10n.medicalRecord,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const MedicalRecordHomeUi(),
        tablet: const MedicalRecordHomeUi(),
        desktop: const MedicalRecordHomeUi(),
      ),
    );
  }
}
