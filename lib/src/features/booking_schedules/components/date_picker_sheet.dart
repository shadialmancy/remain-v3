import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/constants/constants.dart';

class DatePickerBottomSheet extends StatefulWidget {
  const DatePickerBottomSheet({
    super.key,
    required this.onDateSelected,
    required this.selectedDate,
    this.selectedColor,
    this.enabledDates,
  });
  final Function(DateTime, DateTime)? onDateSelected;
  final DateTime selectedDate;
  final Color? selectedColor;
  final List<String?>? enabledDates;

  @override
  DatePickerBottomSheetState createState() => DatePickerBottomSheetState();
}

class DatePickerBottomSheetState extends State<DatePickerBottomSheet> {
  // Remove the old selectedDate, we are using the widget's selectedDate now

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Container(
      color: theme.greyFA,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableCalendar(
            locale: 'en_US',
            firstDay: DateTime.now(),
            lastDay: DateTime.now().add(const Duration(days: 365)),
            focusedDay: widget.selectedDate,
            selectedDayPredicate: (day) => isSameDay(day, widget.selectedDate),
            onDaySelected: (selectedDay, focusedDay) {
              widget.onDateSelected?.call(selectedDay, focusedDay);
            },
            enabledDayPredicate: (day) {
              if (widget.enabledDates == null) {
                return true;
              }
              final dateString =
                  DateFormat('yyyy-MM-dd', 'en_US').format(day).toString();
              return widget.enabledDates?.contains(dateString) ?? false;
            },
            calendarFormat: CalendarFormat.month,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            headerStyle: HeaderStyle(
              leftChevronMargin: EdgeInsets.zero,
              rightChevronPadding: EdgeInsets.zero,
              formatButtonVisible: false,
              titleCentered: false,
              titleTextStyle: theme.titleSmall.copyWith(
                color: theme.dark2E,
                fontWeight: FontWeight.w600,
              ),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: theme.labelMedium.copyWith(
                color: theme.grey99,
                fontWeight: FontWeight.w600,
              ),
            ),
            calendarStyle: CalendarStyle(
              defaultTextStyle: theme.headlineSmall.copyWith(
                color: theme.dark2E,
                fontWeight: FontWeight.w400,
              ),
              isTodayHighlighted: false,
              todayDecoration: BoxDecoration(
                color: widget.selectedColor ?? theme.primary,
                shape: BoxShape.rectangle,
              ),
              selectedDecoration: BoxDecoration(
                color: widget.selectedColor ?? theme.primary,
                shape: BoxShape.circle,
              ),
              selectedTextStyle: theme.headlineSmall.copyWith(
                color: theme.greyFA,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          gapH20,
        ],
      ),
    );
  }
}
