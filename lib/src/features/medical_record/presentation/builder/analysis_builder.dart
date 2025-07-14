import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../domain/entities/entities.dart';
import '../providers/fetch_lab_result_provider.dart';
import '../widgets/widgets.dart';

class AnalysisBuilder extends ConsumerWidget {
  const AnalysisBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(fetchLabResultServiceProvider),
        data: (PatientLabResultsEntity? labResultEntity) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 1.5.sh),
            child: labResultEntity?.data?.isEmpty ?? true
                ? Center(
                    child: Text(
                    l10n.noDataAvailableNow,
                    style: theme.bodyMedium,
                  ))
                : Column(
                    children: List.generate(
                      labResultEntity?.data?.length ?? 0,
                      (index) {
                        return TestResultContainer(
                          data: labResultEntity?.data?[index],
                        );
                      },
                    ),
                  ),
          );
        });
  }
}
