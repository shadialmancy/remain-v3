import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'dart:ui' as ui;
import '../components/date_picker_sheet.dart';
import '../presentation/provider/selected_appointment_service.dart';

class SelectDateDropdown extends ConsumerStatefulWidget {
  const SelectDateDropdown({required this.selectedColor, super.key});
  final Color selectedColor;

  @override
  ConsumerState<SelectDateDropdown> createState() => _SelectDateDropdownState();
}

class _SelectDateDropdownState extends ConsumerState<SelectDateDropdown> {
  String? _selectedDate;
  DateTime _selectedDateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final appointmentRef =
        ref.read(selectedAppointmentServiceProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.chooseDate,
          style: theme.titleSmall.copyWith(
            color: theme.dark2E,
            fontWeight: FontWeight.w500,
          ),
        ),
        gapH8,
        InkWell(
          onTap: () async {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => DatePickerBottomSheet(
                selectedDate: _selectedDateTime,
                selectedColor: widget.selectedColor,
                onDateSelected: (date, _) async {
                  setState(() {
                    _selectedDate =
                        DateFormat('yyyy/MM/dd', 'en_US').format(date);
                    _selectedDateTime = date;
                  });
                  appointmentRef.setSelectedDate(_selectedDate);
                  await appointmentRef.getTimesOfSelectedDoctors();
                  if (context.mounted) {
                    context.router.maybePop();
                  }
                },
              ),
            );
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: theme.greyD8,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Directionality(
                    textDirection: ui.TextDirection.ltr,
                    child: Text(
                      _selectedDate ?? l10n.chooseYourSuitableDate,
                      style: theme.labelLarge.copyWith(
                        color:
                            _selectedDate == null ? theme.greyD8 : theme.dark2E,
                      ),
                      locale: const Locale('en', 'US'),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: theme.grey99,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
