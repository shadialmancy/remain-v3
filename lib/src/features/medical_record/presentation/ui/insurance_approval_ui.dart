import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_insurance_approval_provider.dart';
import 'package:remain/src/features/medical_record/presentation/providers/insurance_approval_category_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/localization/localizations.dart';
import '../../data/model/patient_approval_dto/insurance_item.dart';
import '../../domain/entities/entities.dart';
import '../widgets/widgets.dart';

class InsuranceApprovalUi extends ConsumerStatefulWidget {
  const InsuranceApprovalUi({super.key});

  @override
  ConsumerState<InsuranceApprovalUi> createState() =>
      _InsuranceApprovalUiState();
}

class _InsuranceApprovalUiState extends ConsumerState<InsuranceApprovalUi> {
  final String insuranceApprovalStatus = 'approval';
  String? lang;
  Future<void> init() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en' ? AppStrings.en : AppStrings.ar;
      });
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(fetchInsurancApprovaleServiceProvider),
        data: (PatientApprovalEntity? approvalEntity) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(5.1.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InsuranceApprovalCategory(),
                gapH20,
                AsyncValueWidget(
                    value: ref.watch(insuranceApprovalCategoryServiceProvider),
                    data: (List<InsuranceItem?>? insuranceItem) {
                      return Column(
                        children: List.generate(
                          insuranceItem?.length ?? 0,
                          (index) {
                            final dateTime = DateFormat(
                                    'yyyy-MM-dd', AppStrings.en.toLowerCase())
                                .format(DateTime.parse(
                                    insuranceItem?[index]?.approvalExpiryDate ??
                                        ''));
                            return Container(
                              padding: EdgeInsets.all(4.sw),
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 2.sh),
                              decoration: BoxDecoration(
                                  color: theme.greyFA,
                                  borderRadius: AppSizes.borderRadius16,
                                  boxShadow: [
                                    BoxShadow(
                                        color: theme.fullDark
                                            .withValues(alpha: 0.08),
                                        blurRadius: 4)
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InsuranceApprovalInfo(
                                      title: lang == 'en'
                                          ? (insuranceItem?[index]
                                                  ?.patEngName ??
                                              '')
                                          : (insuranceItem?[index]
                                                  ?.patArbName ??
                                              ''),
                                      icon: AssetsHelper.profile2Icon),
                                  InsuranceApprovalInfo(
                                      title: lang == 'en'
                                          ? (insuranceItem?[index]
                                                  ?.docEngName ??
                                              '')
                                          : (insuranceItem?[index]
                                                  ?.docArbName ??
                                              ''),
                                      icon: AssetsHelper.profileDoctorIcon),
                                  InsuranceApprovalInfo(
                                      title:
                                          insuranceItem?[index]?.serviceName ??
                                              '',
                                      icon: AssetsHelper.receiptDisabledIcon),
                                  InsuranceApprovalInfo(
                                      title: "${l10n.serviceEndsIn}: $dateTime",
                                      icon: AssetsHelper.calendarDisabledIcon),
                                  gapH8,
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.sw, vertical: 1.sw),
                                    decoration: BoxDecoration(
                                      color: insuranceItem?[index]
                                                  ?.approvalStatus ==
                                              "Approved"
                                          ? theme.greenAE
                                          : insuranceApprovalStatus == "Pending"
                                              ? theme.yellowFF
                                              : theme.lightRedBorderColor,
                                      borderRadius: AppSizes.borderRadius8,
                                    ),
                                    child: Text(
                                      insuranceItem?[index]?.approvalStatus ==
                                              "Approved"
                                          ? l10n.itHasBeenApproved
                                          : insuranceApprovalStatus == "Pending"
                                              ? l10n.underReview
                                              : l10n.rejected,
                                      style: theme.labelMedium.copyWith(
                                          color: insuranceItem?[index]
                                                      ?.approvalStatus ==
                                                  "Approved"
                                              ? theme.green47
                                              : insuranceApprovalStatus ==
                                                      "Pending"
                                                  ? theme.yellowB5
                                                  : theme.redD7,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    })
              ],
            ),
          );
        });
  }
}
