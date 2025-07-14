import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_insurance_provider.dart';
import 'package:remain/src/features/medical_record/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class InsuranceCompanyUi extends ConsumerStatefulWidget {
  const InsuranceCompanyUi({super.key});

  @override
  ConsumerState<InsuranceCompanyUi> createState() => _InsuranceCompanyUiState();
}

class _InsuranceCompanyUiState extends ConsumerState<InsuranceCompanyUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(fetchInsuranceServiceProvider),
        data: (insuranceEntity) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(5.1.sw),
            child: insuranceEntity?.data?.isEmpty ?? true
                ? Center(
                    child: Text(
                    l10n.noDataAvailableNow,
                    style: theme.bodyMedium,
                  ))
                : Column(
                    children: List.generate(
                      insuranceEntity?.data?.length ?? 0,
                      (index) {
                        return InsuranceContainer(
                            data: insuranceEntity?.data?[index]);
                      },
                    ),
                  ),
          );
        });
  }
}
