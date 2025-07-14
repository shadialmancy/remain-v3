import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/booking_schedules/presentation/ui/confirm_booking_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class ConfirmBookingScreen extends StatelessWidget {
  const ConfirmBookingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        title: Text(
          l10n.confirmReservationInformation,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ConfirmBookingUi(),
        tablet: const ConfirmBookingUi(),
        desktop: const ConfirmBookingUi(),
      ),
    );
  }
}
