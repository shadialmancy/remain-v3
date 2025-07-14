import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/medical_record/presentation/providers/insurance_approval_category_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';

class InsuranceApprovalCategory extends ConsumerStatefulWidget {
  const InsuranceApprovalCategory({super.key});

  @override
  ConsumerState<InsuranceApprovalCategory> createState() =>
      _InsuranceApprovalCategoryState();
}

class _InsuranceApprovalCategoryState
    extends ConsumerState<InsuranceApprovalCategory> {
  int currentIndex = 0;
  String? lang;
  Future<void> init() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en' ? AppStrings.en : AppStrings.ar;
      });
    });
  }

  List<String> insuranceCategoryList = [];
  List<String> insuranceCategoryKeywordsList = [
    '',
    'Approved',
    'Pending',
    'Rejected'
  ];

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    insuranceCategoryList = [
      l10n.all,
      l10n.accepted,
      l10n.underProgress,
      l10n.rejected
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          insuranceCategoryList.length,
          (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  ref
                      .watch(insuranceApprovalCategoryServiceProvider.notifier)
                      .onSelectingCategory(
                          value: insuranceCategoryKeywordsList[index]);
                });
              },
              child: Container(
                padding: EdgeInsets.all(2.sw),
                margin: lang == AppStrings.en
                    ? EdgeInsets.only(left: 3.sw)
                    : EdgeInsets.only(right: 3.sw),
                decoration: BoxDecoration(
                    borderRadius: AppSizes.borderRadius4,
                    color: currentIndex == index ? theme.primary : theme.greyFA,
                    border: currentIndex == index
                        ? null
                        : Border.all(color: theme.greyD8)),
                child: Text(
                  insuranceCategoryList[index],
                  style: currentIndex == index
                      ? theme.labelMedium.copyWith(
                          fontWeight: FontWeight.w600,
                          color: theme.primaryBackground)
                      : theme.labelMedium.copyWith(
                          fontWeight: FontWeight.normal, color: theme.grey99),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
