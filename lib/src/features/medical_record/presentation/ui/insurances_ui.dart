import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../profile/presentation/widgets/widgets.dart';

class InsurancesUi extends StatefulWidget {
  const InsurancesUi({super.key});

  @override
  State<InsurancesUi> createState() => _InsurancesUiState();
}

class _InsurancesUiState extends State<InsurancesUi> {
  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return SingleChildScrollView(
      padding: EdgeInsets.all(5.1.sw),
      child: Column(
        children: [
          ProfileHeader(
            disableEdit: false,
            onEditTap: () {
              context.router.push(const EditInsuranceProfileRoute());
            },
          ),
          gapH24,
          ProfileItem(
            icon: AssetsHelper.medicalRecordIcon,
            title: l10n.medicalInsurance,
            onTap: () {
              context.router.push(const InsuranceCompanyRoute());
            },
          ),
          gapH12,
          ProfileItem(
            icon: AssetsHelper.testResult2Icon,
            title: l10n.insuranceApprovals,
            onTap: () {
              context.router.push(const InsuranceApprovalRoute());
            },
          ),
          gapH12,
          // ProfileItem(icon: AssetsHelper.vaccinationsAndMedicationsIcon, title: l10n.sickLeave, onTap: () {
          //   context.router.push(const SickLeaveRoute());
          // },),
        ],
      ),
    );
  }
}
