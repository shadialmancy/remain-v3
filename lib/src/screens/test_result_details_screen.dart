import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/medical_record/presentation/ui/test_result_details_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/medical_record/data/model/patient_lab_results_dto/lab_results_data.dart';

@RoutePage()
class TestResultDetailsScreen extends StatelessWidget {
  const TestResultDetailsScreen({super.key, this.isRays, this.labData});
  final LabResultsData? labData;
  final bool? isRays;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        title: Text(
          l10n.testResults,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: TestResultDetailsUi(
          isRays: isRays,
          labData: labData,
        ),
        tablet: TestResultDetailsUi(
          isRays: isRays,
          labData: labData,
        ),
        desktop: TestResultDetailsUi(
          isRays: isRays,
          labData: labData,
        ),
      ),
    );
  }
}
