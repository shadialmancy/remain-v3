import 'package:flutter/material.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/localization/localizations.dart';
import '../../data/model/patient_lab_results_dto/lab_results_data.dart';
import '../widgets/widgets.dart';

class TestResultDetailsUi extends StatefulWidget {
  const TestResultDetailsUi({super.key, this.isRays, this.labData});
  final bool? isRays;
  final LabResultsData? labData;

  @override
  State<TestResultDetailsUi> createState() => _TestResultDetailsUiState();
}

class _TestResultDetailsUiState extends State<TestResultDetailsUi> {
  String lang = '';

  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      lang = value.languageCode.toLowerCase();
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    getAppLocale();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 5.1.sw, vertical: 2.sh),
      child: Column(
        children: [
          TestResultContainer(
            withoutArrow: true,
            isRay: widget.isRays,
            data: widget.labData,
          ),
          gapH8,
          DoctorInfo(
            doctorName: lang == 'ar'
                ? widget.labData?.doctorArbName ?? ''
                : widget.labData?.doctorEngName ?? '',
            respCenterName: lang == 'ar'
                ? widget.labData?.respCenterArbName ?? ''
                : widget.labData?.respCenterEngName ?? '',
            speciality: lang == 'ar'
                ? widget.labData?.respCenterArbName ?? ''
                : widget.labData?.respCenterEngName ?? '',
          ),
          gapH20,
          const AnalysisResultContainer(),
          gapH16,
          Text(
            l10n.testResultAdvice,
            style: theme.bodySmall.copyWith(color: theme.grey8080),
          )
        ],
      ),
    );
  }
}
