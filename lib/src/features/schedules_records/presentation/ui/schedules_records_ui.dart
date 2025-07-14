import 'package:flutter/material.dart';
import 'package:remain/src/features/schedules_records/presentation/builder/builder.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class SchedulesRecordsUi extends StatelessWidget {
  const SchedulesRecordsUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Padding(
      padding: EdgeInsets.only(
        top: 5.1.sh,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
            child: Text(
              l10n.reservations,
              style: theme.bodyMedium
                  .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
            ),
          ),
          gapH32,
          const SchedulesHistoryScreenBuilder()
        ],
      ),
    );
  }
}
