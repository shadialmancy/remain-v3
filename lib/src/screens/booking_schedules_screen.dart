import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/booking_schedules/presentation/ui/booking_schedules_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class BookingSchedulesScreen extends StatelessWidget {
  const BookingSchedulesScreen({super.key});
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
        mobile: const BookingSchedulesUi(),
        tablet: const BookingSchedulesUi(),
        desktop: const BookingSchedulesUi(),
      ),
    );
  }
}
