import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/reschedule_booking_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/routes/app_router.dart';
import '../../widgets/widgets.dart';
import '../provider/selected_appointment_service.dart';

class RescheduleBookingUi extends ConsumerStatefulWidget {
  const RescheduleBookingUi({super.key, required this.bookedInfo});
  final PatientBookingInfo? bookedInfo;
  @override
  ConsumerState<RescheduleBookingUi> createState() =>
      _RescheduleBookingUiState();
}

class _RescheduleBookingUiState extends ConsumerState<RescheduleBookingUi> {
  String _language = '';
  Future<void> getAppLocale() async {
    _language = await getLocale().then((value) {
      return value.languageCode;
    });
    setState(() {});
  }

  @override
  void initState() {
    getAppLocale();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final rescheduleRef = ref.read(rescheduleBookingServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(rescheduleBookingServiceProvider),
        data: (_) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH20,
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.greyFA,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff6888e6).withValues(alpha: 0.09),
                        spreadRadius: 0,
                        blurRadius: 24.5,
                        offset: const Offset(0, -1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5.3.screenWidth,
                        vertical: 1.4.screenHeight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
                          child: Text(
                            _language == 'ar'
                                ? widget.bookedInfo?.docArbName ?? ''
                                : widget.bookedInfo?.docEngName ?? '',
                            style: theme.titleSmall.copyWith(
                              color: theme.dark2E,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        gapH8,
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
                          child: Text(
                            _language == 'ar'
                                ? widget.bookedInfo?.docSpecArbName ?? ''
                                : widget.bookedInfo?.docSpecEngName ?? '',
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                gapH24,
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.greyFA,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff6888e6).withValues(alpha: 0.09),
                        spreadRadius: 0,
                        blurRadius: 24.5,
                        offset: const Offset(0, -1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5.3.screenWidth,
                        vertical: 2.4.screenHeight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectDateDropdown(
                          selectedColor: theme.primary,
                        ),
                        gapH16,
                        const SelectTimeSlots(),
                        gapH48,
                        gapH48,
                        gapH32,
                        AsyncValueWidget(
                            value:
                                ref.watch(selectedAppointmentServiceProvider),
                            data: (_) {
                              final time = ref
                                  .watch(selectedAppointmentServiceProvider
                                      .notifier)
                                  .getSelectedTime();
                              return PrimaryButton(
                                onPressed: () async {
                                  bool status =
                                      await rescheduleRef.rescheduleBooking(
                                          widget.bookedInfo?.bookingId
                                              .toString());
                                  if (status && context.mounted) {
                                    AppToast.successToast(l10n
                                        .yourBookingHasBeenRescheduledSuccessfully);

                                    context.router.replaceAll(
                                        [const DashboardLayoutRoute()]);
                                  } else {
                                    AppToast.errorToast(
                                        l10n.failedToRescheduleReservation);
                                    if (context.mounted) {
                                      context.router.maybePop();
                                    }
                                  }
                                },
                                title: l10n.confirm,
                                isDisabled: time == null,
                              );
                            }),
                        gapH48,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
