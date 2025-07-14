import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../profile/presentation/widgets/widgets.dart';

class MedicalRecordHomeUi extends ConsumerStatefulWidget {
  const MedicalRecordHomeUi({super.key});

  @override
  ConsumerState<MedicalRecordHomeUi> createState() =>
      _MedicalRecordHomeUiState();
}

class _MedicalRecordHomeUiState extends ConsumerState<MedicalRecordHomeUi> {
  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(authUiServiceProvider),
        data: (patientInfo) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(5.1.sw),
            child: Column(
              children: [
                const ProfileHeader(),
                gapH20,
                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.3,
                      crossAxisCount: 2,
                      crossAxisSpacing: 3.sw,
                      mainAxisSpacing: 3.sw),
                  children: [
                    InfoCard(
                      title: l10n.age,
                      value: '${patientInfo?.age} ${l10n.year}',
                      icon: AssetsHelper.ageIcon,
                    ),
                    InfoCard(
                      title: l10n.gender,
                      value: patientInfo?.sex?.toLowerCase() == 'm'
                          ? l10n.male
                          : l10n.female,
                      icon: AssetsHelper.genderIcon,
                    ),
                    InfoCard(
                      title: l10n.weight,
                      value: '${patientInfo?.vitalSigns?.weight} ${l10n.kg}',
                      icon: AssetsHelper.weightIcon,
                    ),
                    InfoCard(
                      title: l10n.height,
                      value: '${patientInfo?.vitalSigns?.height} ${l10n.cm}',
                      icon: AssetsHelper.heightIcon,
                    ),
                  ],
                ),
                gapH12,
                ProfileItem(
                  icon: AssetsHelper.medicalRecordIcon,
                  title: l10n.recordStatements,
                  onTap: () {
                    context.router.push(const RecordStatementsRoute());
                  },
                ),
                gapH12,
                ProfileItem(
                  icon: AssetsHelper.testResult2Icon,
                  title: l10n.laboratoryAndRadiologyResults,
                  onTap: () {
                    context.router.push(const TestResultRoute());
                  },
                ),
                gapH12,
                ProfileItem(
                  icon: AssetsHelper.vaccinationsAndMedicationsIcon,
                  title: l10n.medications,
                  onTap: () {
                    context.router
                        .push(const VaccinationsAndMedicaltionsRoute());
                  },
                ),
                gapH12,
                ProfileItem(
                  icon: AssetsHelper.insuranceIcon,
                  title: l10n.medicalInsurance,
                  onTap: () {
                    context.router.push(const InsurancesRoute());
                  },
                ),
                gapH12,
                ProfileItem(
                  icon: AssetsHelper.sickLeaveIcon,
                  title: l10n.sickLeave,
                  onTap: () {
                    context.router.push(const SickLeaveRoute());
                  },
                ),
                gapH12
              ],
            ),
          );
        });
  }
}
