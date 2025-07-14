import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/dashboard/provider/motion_controller.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/booking_schedules/data/models/doctors_dto/doctor_data.dart';
import 'package:remain/src/features/booking_schedules/data/models/doctors_dto/service_info.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/booking_details_service.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/doctor_service.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/medical_center_service.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/reschedule_booking_service.dart';
import 'package:remain/src/features/schedules_records/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../../booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';
import '../../../payments/presentation/providers/payments_service.dart';

class CurrentScheduleBuilder extends ConsumerStatefulWidget {
  const CurrentScheduleBuilder({
    super.key,
    required this.data,
  });
  final List<PatientBookingInfo>? data;

  @override
  ConsumerState<CurrentScheduleBuilder> createState() =>
      _CurrentScheduleBuilderState();
}

class _CurrentScheduleBuilderState
    extends ConsumerState<CurrentScheduleBuilder> {
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
    final docService = ref.watch(doctorServiceProvider.notifier);
    final paymentRef = ref.read(paymentServiceProvider.notifier);
    return widget.data?.isEmpty ?? true
        ? Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            gapH48,
            ScheduleEmpty(title: l10n.thereAreNoCurrentAppointments),
            gapH16,
            CustomButton(
              width: 191,
              title: l10n.bookAnAppointment,
              onPressed: () {
                context.tabsRouter.setActiveIndex(2);
                ref.read(motionControllerProvider.notifier).setIndex(2);
              },
              titleStyle: theme.bodyMedium
                  .copyWith(color: theme.whiteF6, fontWeight: FontWeight.w500),
            )
          ])
        : SingleChildScrollView(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 3.sh),
            child: Column(
              children: List.generate(
                widget.data?.length ?? 0,
                (index) {
                  return ReservationContainer(
                    data: widget.data?[index],
                    reservationButtons: Padding(
                      padding: EdgeInsets.only(
                        left: 4.sw,
                        right: 4.sw,
                        bottom: 2.sh,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReservationButton(
                              onTap: () {
                                showChangeReservationDialog(
                                  context,
                                  bookingInfo: widget.data?[index],
                                  language: _language,
                                  medicalCenterService: ref.read(
                                      medicalCenterServiceProvider.notifier),
                                  onChangeBooking: () async {
                                    ref
                                        .read(rescheduleBookingServiceProvider
                                            .notifier)
                                        .saveBookingInfo(
                                          widget.data?[index] ??
                                              PatientBookingInfo(),
                                        );
                                    docService.setSelectedDoctor(DoctorData(
                                      doctorId: widget.data?[index].doctorId,
                                      arbName: widget.data?[index].docArbName,
                                      engName: widget.data?[index].docEngName,
                                      specialityArbName:
                                          widget.data?[index].docSpecArbName,
                                      specialityEngName:
                                          widget.data?[index].docSpecEngName,
                                      facilityId: widget.data?[index].docSpecId,
                                      serviceInfo: ServiceInfo(
                                        serviceId:
                                            widget.data?[index].serviceId,
                                      ),
                                    ));
                                    final info = ref
                                        .read(rescheduleBookingServiceProvider
                                            .notifier)
                                        .getBookingInfo();
                                    if (info != null) {
                                      context.router
                                          .popAndPush(RescheduleBookingRoute(
                                        bookedInfo: info,
                                      ));
                                    }
                                  },
                                );
                              },
                              title: l10n.changeReservation,
                              icon: AssetsHelper.editIcon),
                          SizedBox(
                            height: 2.5.sh,
                            child: VerticalDivider(
                              color: theme.greyD8,
                            ),
                          ),
                          widget.data?[index].appTime?.split(' ')[0] ==
                                  DateTime.now().toString().split(' ')[0]
                              ? ReservationButton(
                                  onTap: () async {
                                    if (widget.data?[index].isPaid ?? false) {
                                      return;
                                    }
                                    ref
                                        .read(doctorServiceProvider.notifier)
                                        .setSelectedDoctor(DoctorData(
                                          doctorId:
                                              widget.data?[index].doctorId,
                                          arbName:
                                              widget.data?[index].docArbName,
                                          engName:
                                              widget.data?[index].docEngName,
                                          specialityArbName: widget
                                              .data?[index].docSpecArbName,
                                          specialityEngName: widget
                                              .data?[index].docSpecEngName,
                                          facilityId:
                                              widget.data?[index].docSpecId,
                                          specId: widget.data?[index].docSpecId,
                                          serviceInfo: ServiceInfo(
                                            serviceId:
                                                widget.data?[index].serviceId,
                                          ),
                                        ));
                                    num? amount = await ref
                                        .read(bookingDetailsServiceProvider
                                            .notifier)
                                        .calcAmountToPay(widget
                                                .data?[index].bookingId
                                                .toString() ??
                                            '');
                                    await ref
                                        .read(paymentServiceProvider.notifier)
                                        .calcPaymentWithVat(amount);
                                    paymentRef.setBookingId(widget
                                            .data?[index].bookingId
                                            .toString() ??
                                        '');
                                    paymentRef.setPaymentDescription(
                                        '${l10n.appointmentBookingWithDr} ${widget.data?[index].docArbName} - ${widget.data?[index].bookingId ?? ''}');
                                    if (context.mounted) {
                                      context.router
                                          .push(const CardPaymentRoute());
                                    }
                                  },
                                  title: widget.data?[index].isPaid ?? false
                                      ? l10n.isPaid
                                      : l10n.payNow,
                                  icon: widget.data?[index].isPaid ?? false
                                      ? AssetsHelper.tickCircleSuccessIcon
                                      : AssetsHelper.moneyIcon,
                                )
                              : ReservationButton(
                                  onTap: () async {
                                    ProgressDialog progressDialog =
                                        ProgressDialog(context: context);
                                    progressDialog.show(max: 100, msg: '');
                                    bool isCanceled = await ref
                                        .watch(bookingDetailsServiceProvider
                                            .notifier)
                                        .cancelBooking(widget
                                                .data?[index].bookingId
                                                .toString() ??
                                            '');
                                    progressDialog.close();
                                    if (isCanceled && context.mounted) {
                                      showCancelReservationDialog(context);
                                    } else {
                                      AppToast.errorToast(
                                          l10n.failedToCancelReservation);
                                    }
                                  },
                                  title: l10n.cancelReservation,
                                  icon: AssetsHelper.cancelIcon),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
  }
}
