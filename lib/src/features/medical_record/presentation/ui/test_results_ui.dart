import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/constants/app_constants.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/authentication/data/models/pat_rel.dart';
import 'package:remain/src/features/authentication/data/models/patient_info.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_lab_result_provider.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_ray_result_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/localization/localizations.dart';
import '../builder/builders.dart';
import '../providers/test_result_tabbar_provider.dart';
import '../widgets/widgets.dart';

class TestResultsUi extends ConsumerStatefulWidget {
  const TestResultsUi({super.key});

  @override
  ConsumerState<TestResultsUi> createState() => _TestResultsUiState();
}

class _TestResultsUiState extends ConsumerState<TestResultsUi> {
  String? lang;
  PatRel? _selectedPatient;
  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en'
            ? AppStrings.en.toLowerCase()
            : AppStrings.ar.toLowerCase();
      });
    });
  }

  @override
  void initState() {
    getAppLocale();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final testResultService =
        ref.watch(testResultTabbarServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(testResultTabbarServiceProvider),
        data: (_) {
          return Column(
            children: [
              AsyncValueWidget(
                  value: ref.watch(authUiServiceProvider),
                  data: (PatientInfo? patientInfo) {
                    if (patientInfo == null) {
                      return const SizedBox.shrink();
                    }
                    testResultService.setPatientId(patientInfo.id.toString());
                    _selectedPatient = PatRel(
                      arbName: lang == 'ar'
                          ? patientInfo.arbName
                          : patientInfo.engName,
                      engName: lang == 'en'
                          ? patientInfo.engName
                          : patientInfo.arbName,
                      patID: patientInfo.id,
                      id: patientInfo.id, // Example fields
                    );

                    // Create a list of items for the dropdown
                    List<PatRel> dropdownItems = [
                      // Add the patientInfo as the first item

                      PatRel(
                        arbName: lang == 'ar'
                            ? patientInfo.arbName
                            : patientInfo.engName,
                        engName: lang == 'en'
                            ? patientInfo.engName
                            : patientInfo.arbName,
                        patID: patientInfo.id,
                        id: patientInfo.id,
                      ),
                      ...?patientInfo.patRel,
                    ];

                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 5.1.sw, vertical: 2.sh),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.selectThePatient,
                            style: theme.labelLarge.copyWith(
                              color: theme.dark2E,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          gapH8,
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: theme.greyD8,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: DropdownButtonFormField<PatRel>(
                                value: _selectedPatient,
                                style: theme.labelLarge.copyWith(
                                  color: theme.dark2E,
                                  fontWeight: FontWeight.w400,
                                ),
                                isExpanded: true,
                                hint: Text(
                                  _selectedPatient == null
                                      ? lang == 'ar'
                                          ? patientInfo.arbName ?? ''
                                          : patientInfo.engName ?? ''
                                      : lang == 'ar'
                                          ? _selectedPatient?.arbName ?? ''
                                          : _selectedPatient?.engName ?? '',
                                  style: theme.labelLarge.copyWith(
                                    color: theme.dark2E,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                items: dropdownItems.map((PatRel value) {
                                  return DropdownMenuItem<PatRel>(
                                    value: value,
                                    child: Text(
                                      lang == 'ar'
                                          ? value.arbName ?? ''
                                          : value.engName ?? '',
                                      style: theme.labelLarge.copyWith(
                                        color: theme.dark2E,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                dropdownColor: Colors.white,
                                onChanged: (newValue) async {
                                  if (newValue != null) {
                                    // Update the selected patient
                                    setState(() {
                                      _selectedPatient = newValue;
                                    });
                                    testResultService.setPatientId(
                                        _selectedPatient?.id.toString());
                                    ref.invalidate(
                                        fetchLabResultServiceProvider);
                                    ref.invalidate(
                                        fetchRayResultServiceProvider);
                                    logger.i(
                                        'Selected Patient ID: ${_selectedPatient?.id}');
                                  }
                                },
                                iconSize: 24,
                                isDense: true,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: theme.grey8080,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              Padding(
                padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
                child: const TestResultTabBar(),
              ),
              Expanded(
                child: PageView(
                  controller: testResultService.pageController,
                  onPageChanged: (value) {
                    testResultService.onPageChange(value);
                  },
                  children: const [
                    AnalysisBuilder(),
                    RaysBuilder(),
                  ],
                ),
              )
            ],
          );
        });
  }
}
