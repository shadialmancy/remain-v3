import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/booking_schedules/presentation/ui/select_doctor_appointment_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class SelectDoctorAppointmentScreen extends StatelessWidget {
  const SelectDoctorAppointmentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        // backButton: const SizedBox(),
        title: Text(
          l10n.selectAnAppointment,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const SelectDoctorAppointmentUi(),
        tablet: const SelectDoctorAppointmentUi(),
        desktop: const SelectDoctorAppointmentUi(),
      ),
    );
  }
}
