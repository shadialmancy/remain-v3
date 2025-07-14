import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/schedules_records/presentation/ui/schedules_records_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class SchedulesRecordsScreen extends StatelessWidget {
  const SchedulesRecordsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: theme.primaryBackground,
        appBar: TransparentAppBar(
          color: theme.primaryBackground,
          backButton: const SizedBox(),
        ),
        body: CustomAdaptiveScreen.builder(
          mobile: const SchedulesRecordsUi(),
          tablet: const SchedulesRecordsUi(),
          desktop: const SchedulesRecordsUi(),
        ),
      ),
    );
  }
}
