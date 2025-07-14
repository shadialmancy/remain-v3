import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/selected_appointment_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../widgets/widgets.dart';

class SelectDoctorAppointmentUi extends ConsumerStatefulWidget {
  const SelectDoctorAppointmentUi({super.key});

  @override
  ConsumerState<SelectDoctorAppointmentUi> createState() =>
      _SelectDoctorAppointmentUiState();
}

class _SelectDoctorAppointmentUiState
    extends ConsumerState<SelectDoctorAppointmentUi> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH24,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
            child: const DoctorInfoInDetails(),
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
                  horizontal: 5.3.screenWidth, vertical: 2.4.screenHeight),
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
                    value: ref.watch(authUiServiceProvider),
                    data: (patient) {
                      return AsyncValueWidget(
                          value: ref.watch(selectedAppointmentServiceProvider),
                          data: (_) {
                            final time = ref
                                .watch(
                                    selectedAppointmentServiceProvider.notifier)
                                .getSelectedTime();
                            return PrimaryButton(
                              onPressed: () {
                                if (patient == null) {
                                  AppToast.errorToast(
                                      l10n.pleaseLoginFirstToBookAnAppointment);
                                  return;
                                }
                                context.router
                                    .push(const ConfirmBookingRoute());
                              },
                              title: l10n.confirm,
                              isDisabled: time == null,
                            );
                          });
                    },
                  ),
                  gapH48,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
