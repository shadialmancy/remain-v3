import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/booking_schedules/presentation/ui/reschedule_booking_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';

@RoutePage()
class RescheduleBookingScreen extends StatelessWidget {
  const RescheduleBookingScreen({super.key, this.bookedInfo});
  final PatientBookingInfo? bookedInfo;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        // backButton: const SizedBox(),
        title: Text(
          l10n.rescheduleTheAppointment,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: RescheduleBookingUi(bookedInfo: bookedInfo),
        tablet: RescheduleBookingUi(bookedInfo: bookedInfo),
        desktop: RescheduleBookingUi(bookedInfo: bookedInfo),
      ),
    );
  }
}
