import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/primary_button.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/booking_details_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../data/models/availability_time_slots_dto/app_time.dart';
import '../../data/models/doctors_dto/doctor_data.dart';

class AnimatedCompletingBookingUi extends ConsumerWidget {
  const AnimatedCompletingBookingUi(
      {required this.doctorData,
      required this.selectedDate,
      required this.selectedTime,
      super.key});
  final DoctorData? doctorData;
  final String? selectedDate;
  final AppTime? selectedTime;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final bookRef = ref.read(bookingDetailsServiceProvider.notifier);

    return PopScope(
      canPop: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.3.screenWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AssetsHelper.successGIF,
                width: 53.screenWidth,
              ),
              gapH16,
              Text(
                '${l10n.thankYouForBookingWithUs}!',
                style: theme.displaySmall.copyWith(
                  color: theme.primaryText,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH8,
              Text(
                l10n.yourBookingHasBeenConfirmedSuccessfully,
                style: theme.titleSmall.copyWith(
                  color: theme.secondaryText,
                  fontWeight: FontWeight.w400,
                ),
              ),
              gapH24,
              Text(
                '  ${l10n.youHaveBookedAnAppointmentWith} د. ${doctorData?.arbName} \n ${doctorData?.specialityArbName} \n ${DateFormat.yMMMEd().format(DateTime.parse((selectedDate ?? '').replaceAll('/', '-')))} \n ${selectedTime?.timeSlot?.split(' ')[1]} ${selectedTime?.timeSlot?.split(' ')[2]}',
                //  '${l10n.youHaveBookedAnAppointmentWith} دكتور أحمد \n أخصائي تصحيح البصر \n يوم الثلاثاء 4 فبراير \n الساعه 10 صباحا',
                style: theme.labelMedium.copyWith(
                  color: theme.secondaryText,
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
                textAlign: TextAlign.center,
              ),
              gapH32,
              PrimaryButton(
                onPressed: () {
                  bookRef.clearBookingDetails();

                  context.router.replaceAll([const DashboardLayoutRoute()]);
                },
                title: l10n.backToHome,
              ),
              gapH12,
              TextButton(
                onPressed: () {
                  bookRef.clearBookingDetails();

                  context.router.replaceAll(
                      [const DashboardLayoutRoute(), SchedulesRecordsRoute()]);
                },
                child: Text(
                  l10n.goToMyAppointments,
                  style: theme.titleSmall.copyWith(
                    color: theme.primary,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
