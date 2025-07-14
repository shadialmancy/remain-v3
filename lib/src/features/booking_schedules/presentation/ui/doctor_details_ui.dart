import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/features/booking_schedules/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../provider/selected_appointment_service.dart';

class DoctorDetailsUi extends ConsumerWidget {
  const DoctorDetailsUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (_, l10n) = appSettingsRecord(context);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH24,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
                  child: const DoctorInfoInDetails(),
                ),
                gapH24,
                const AboutDoctor(),
                gapH24,
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 5.3.screenWidth, vertical: 2.4.screenHeight),
          child: PrimaryButton(
            onPressed: () {
              ref.read(selectedAppointmentServiceProvider.notifier).clear();
              context.router.push(const SelectDoctorAppointmentRoute());
            },
            title: l10n.bookAppointment,
          ),
        ),
        gapH32,
      ],
    );
  }
}
