import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../provider/schedules_history_tab_bar_provider.dart';

class SchedulesHistoryTabBar extends ConsumerStatefulWidget {
  const SchedulesHistoryTabBar({super.key});

  @override
  ConsumerState<SchedulesHistoryTabBar> createState() =>
      _SchedulesHistoryTabBarState();
}

class _SchedulesHistoryTabBarState
    extends ConsumerState<SchedulesHistoryTabBar> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final scheduleService =
        ref.watch(schedulesHistoryTabBarServiceProvider.notifier);

    return AsyncValueWidget(
        value: ref.watch(schedulesHistoryTabBarServiceProvider),
        data: (_) {
          return Container(
              padding: EdgeInsets.symmetric(horizontal: 2.sw, vertical: 0.5.sh),
              decoration: BoxDecoration(
                color: theme.greyFA,
                border: Border.all(color: theme.whiteF2),
                borderRadius: AppSizes.borderRadius4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      scheduleService.onPageChange(0);
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.sw, vertical: 1.8.sw),
                      decoration: scheduleService.currentIndex == 0
                          ? BoxDecoration(
                              color: theme.primary,
                              boxShadow: [
                                BoxShadow(
                                    color: theme.blue15.withValues(alpha: 0.20),
                                    blurRadius: 20,
                                    offset: const Offset(4, 4))
                              ],
                              borderRadius: AppSizes.borderRadius4)
                          : null,
                      child: Text(
                        l10n.currently,
                        style: scheduleService.currentIndex == 0
                            ? theme.labelMedium.copyWith(
                                color: theme.primaryBackground,
                                fontWeight: FontWeight.w600)
                            : theme.labelMedium.copyWith(
                                color: theme.grey99,
                                fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      scheduleService.onPageChange(1);
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.sw, vertical: 1.8.sw),
                      decoration: scheduleService.currentIndex == 1
                          ? BoxDecoration(
                              color: theme.primary,
                              boxShadow: [
                                BoxShadow(
                                    color: theme.blue15.withValues(alpha: 0.20),
                                    blurRadius: 20,
                                    offset: const Offset(4, 4))
                              ],
                              borderRadius: AppSizes.borderRadius4)
                          : null,
                      child: Text(
                        l10n.previous,
                        style: scheduleService.currentIndex == 1
                            ? theme.labelMedium.copyWith(
                                color: theme.primaryBackground,
                                fontWeight: FontWeight.w600)
                            : theme.labelMedium.copyWith(
                                color: theme.grey99,
                                fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      scheduleService.onPageChange(2);
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.sw, vertical: 1.8.sw),
                      decoration: scheduleService.currentIndex == 2
                          ? BoxDecoration(
                              color: theme.primary,
                              boxShadow: [
                                BoxShadow(
                                    color: theme.blue15.withValues(alpha: 0.20),
                                    blurRadius: 20,
                                    offset: const Offset(4, 4))
                              ],
                              borderRadius: AppSizes.borderRadius4)
                          : null,
                      child: Text(
                        l10n.canceled,
                        style: scheduleService.currentIndex == 2
                            ? theme.labelMedium.copyWith(
                                color: theme.primaryBackground,
                                fontWeight: FontWeight.w600)
                            : theme.labelMedium.copyWith(
                                color: theme.grey99,
                                fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
