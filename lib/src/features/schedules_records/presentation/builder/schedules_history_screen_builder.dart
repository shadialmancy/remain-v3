import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/schedules_records/presentation/builder/builder.dart';
import 'package:remain/src/features/schedules_records/presentation/provider/schedule_service.dart';
import 'package:remain/src/features/schedules_records/presentation/provider/schedules_history_tab_bar_provider.dart';
import 'package:remain/src/features/schedules_records/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../booking_schedules/domain/entities/all_patient_booking_entity.dart';

class SchedulesHistoryScreenBuilder extends ConsumerStatefulWidget {
  const SchedulesHistoryScreenBuilder({super.key});

  @override
  ConsumerState<SchedulesHistoryScreenBuilder> createState() =>
      _SchedulesHistoryScreenBuilderState();
}

class _SchedulesHistoryScreenBuilderState
    extends ConsumerState<SchedulesHistoryScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    final scheduleService =
        ref.watch(schedulesHistoryTabBarServiceProvider.notifier);

    return Expanded(
      child: AsyncValueWidget(
          value: ref.watch(schedulesHistoryTabBarServiceProvider),
          data: (_) {
            return RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(scheduleServiceProvider);
                await ref.watch(scheduleServiceProvider.future);
                setState(() {});
              },
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
                    child: const SchedulesHistoryTabBar(),
                  ),
                  AsyncValueWidget(
                      value: ref.watch(scheduleServiceProvider),
                      loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                      data: (AllPatientBookingsEntity? allBookings) {
                        return Expanded(
                          child: PageView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: scheduleService.pageController,
                            children: [
                              CurrentScheduleBuilder(
                                data: allBookings?.data?.where((element) {
                                      DateTime parsedDate = DateFormat(
                                              'yyyy-MM-dd hh:mm a', 'en_US')
                                          .parse(element.appTime ?? '');
                                      return parsedDate
                                              .isAfter(DateTime.now()) ||
                                          parsedDate.day == DateTime.now().day;
                                    }).toList() ??
                                    [],
                              ),
                              PreviousScheduleBuilder(
                                data: allBookings?.data?.where((element) {
                                      DateTime parsedDate = DateFormat(
                                              'yyyy-MM-dd hh:mm a', 'en_US')
                                          .parse(element.appTime ?? '');
                                      return parsedDate
                                          .isBefore(DateTime.now());
                                    }).toList() ??
                                    [],
                              ),
                              const CanceledScheduleBuilder(
                                data: [],
                              )
                            ],
                          ),
                        );
                      }),
                ],
              ),
            );
          }),
    );
  }
}
