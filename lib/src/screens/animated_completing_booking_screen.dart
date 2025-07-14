import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/booking_schedules/presentation/ui/animated_completing_booking_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/booking_schedules/data/models/availability_time_slots_dto/app_time.dart';
import '../features/booking_schedules/data/models/doctors_dto/doctor_data.dart';

@RoutePage()
class AnimatedCompletingBookingScreen extends StatelessWidget {
  const AnimatedCompletingBookingScreen(
      {required this.doctorData,
      required this.selectedDate,
      required this.selectedTime,
      super.key});
  final DoctorData? doctorData;
  final String? selectedDate;
  final AppTime? selectedTime;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.primaryBackground,
        backButton: const SizedBox(),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: AnimatedCompletingBookingUi(
          doctorData: doctorData,
          selectedDate: selectedDate,
          selectedTime: selectedTime,
        ),
        tablet: AnimatedCompletingBookingUi(
          doctorData: doctorData,
          selectedDate: selectedDate,
          selectedTime: selectedTime,
        ),
        desktop: AnimatedCompletingBookingUi(
          doctorData: doctorData,
          selectedDate: selectedDate,
          selectedTime: selectedTime,
        ),
      ),
    );
  }
}
