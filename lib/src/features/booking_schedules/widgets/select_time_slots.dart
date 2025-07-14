import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/selected_appointment_service.dart';
import 'package:remain/src/features/booking_schedules/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';
import '../data/models/availability_time_slots_dto/app_time.dart';

class SelectTimeSlots extends ConsumerStatefulWidget {
  const SelectTimeSlots({super.key});

  @override
  ConsumerState<SelectTimeSlots> createState() => _SelectTimeSlotsState();
}

class _SelectTimeSlotsState extends ConsumerState<SelectTimeSlots> {
  int _selectedTimeIndex = -1;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final appointmentRef =
        ref.read(selectedAppointmentServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(selectedAppointmentServiceProvider),
        data: (List<AppTime>? appTimes) {
          final date = appointmentRef.getSelectedDate();
          if ((appTimes == null || appTimes.isEmpty) && date != '') {
            return Center(
              child: Text(
                l10n.noTimeAvailableInThisDay,
                style: theme.labelMedium.copyWith(
                  color: theme.redApple,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }
          if (date != '') {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.chooseTime,
                  style: theme.titleSmall.copyWith(
                    color: theme.dark2E,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                gapH8,
                SizedBox(
                  height: 38,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: appTimes?.length,
                    itemBuilder: (context, index) {
                      final slot = appTimes?[index];
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 1.8.screenWidth),
                        child: SlotCard(
                          time:
                              '${slot?.timeSlot?.split(' ')[1]} ${slot?.timeSlot?.split(' ')[2]}',
                          isSelected: _selectedTimeIndex == index,
                          onTap: () {
                            setState(() {
                              _selectedTimeIndex = index;
                            });
                            appointmentRef.setSelectedTime(slot);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return const SizedBox();
        });
  }
}
