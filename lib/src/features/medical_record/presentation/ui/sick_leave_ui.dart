import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_sick_leave_provider.dart';
import 'package:remain/src/features/medical_record/presentation/widgets/sick_leave_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class SickLeaveUi extends ConsumerStatefulWidget {
  const SickLeaveUi({super.key});

  @override
  ConsumerState<SickLeaveUi> createState() => _SickLeaveUiState();
}

class _SickLeaveUiState extends ConsumerState<SickLeaveUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(fetchSickLeaveServiceProvider),
        data: (sickLeaveEntity) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(5.1.sw),
            child: sickLeaveEntity?.data?.isEmpty ?? true
                ? Center(
                    child: Text(
                    l10n.noDataAvailableNow,
                    style: theme.bodyMedium,
                  ))
                : Column(
                    children: List.generate(
                      sickLeaveEntity?.data?.length ?? 0,
                      (index) {
                        return SickLeaveContainer(
                          data: sickLeaveEntity?.data?[index],
                        );
                      },
                    ),
                  ),
          );
        });
  }
}
