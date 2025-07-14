import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/medical_center_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/constants.dart';
import '../../../booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';

void showChangeReservationDialog(BuildContext context,
    {PatientBookingInfo? bookingInfo,
    String? language,
    MedicalCenterService? medicalCenterService,
    Function()? onChangeBooking}) {
  final (theme, l10n) = appSettingsRecord(context);

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: theme.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(l10n.youCanModifyTheAppointmentInsteadOfCancelingIt,
                  style: theme.bodyMedium.copyWith(
                      fontWeight: FontWeight.w500, color: theme.dark48)),
            ),
            GestureDetector(
              child: const Icon(Icons.close),
              onTap: () {
                context.router.maybePop();
              },
            )
          ],
        ),
        content: Container(
          padding: EdgeInsets.all(4.sw),
          decoration: BoxDecoration(
            borderRadius: AppSizes.borderRadius8,
            color: theme.blueF4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AssetsHelper.clockIcon),
                  gapW8,
                  Text(
                    () {
                      try {
                        DateTime parsedDate =
                            DateFormat('yyyy-MM-dd hh:mm a', 'en_US')
                                .parse(bookingInfo?.appTime ?? '');
                        return DateFormat('EEE d MMM yyyy h:mm a', 'ar_SA')
                            .format(parsedDate);
                      } catch (e) {
                        return 'Invalid Date'; // Fallback if parsing fails
                      }
                    }(),
                    style: theme.bodySmall.copyWith(
                        color: theme.primary, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              gapH8,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 5.sw,
                    child: Image.asset(AssetsHelper.femaleDoctor),
                  ),
                  gapW16,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        language == 'ar'
                            ? bookingInfo?.docArbName ?? ''
                            : bookingInfo?.docEngName ?? '',
                        style: theme.bodyMedium.copyWith(
                            color: theme.primary,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        language == 'ar'
                            ? bookingInfo?.docSpecArbName ?? ''
                            : bookingInfo?.docSpecEngName ?? '',
                        style: theme.labelMedium.copyWith(
                            color: theme.grey8080,
                            fontWeight: FontWeight.normal),
                      ),
                      gapH12,
                      Row(
                        children: [
                          SvgPicture.asset(AssetsHelper.hospitalIcon),
                          gapW12,
                          Text(
                            medicalCenterService?.currentCenter ?? '',
                            style: theme.labelMedium.copyWith(
                                color: theme.dark2E,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          CustomButton(
            width: 161,
            onPressed: () {
              onChangeBooking?.call();
            },
            backgroundColor: theme.primary,
            title: l10n.changeReservation,
            titleStyle: theme.bodySmall
                .copyWith(color: theme.white, fontWeight: FontWeight.w500),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: AppSizes.borderRadius8,
                border: Border.all(color: theme.primary, width: 2)),
            child: CustomButton(
              height: 35,
              width: 157,
              onPressed: () {
                context.router.maybePop(context);
              },
              backgroundColor: theme.white,
              title: l10n.cancel,
              titleStyle: theme.bodySmall
                  .copyWith(color: theme.primary, fontWeight: FontWeight.w500),
            ),
          )
        ],
      );
    },
  );
}

void showCancelReservationDialog(BuildContext context) {
  final (theme, l10n) = appSettingsRecord(context);

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 12),
        contentPadding: EdgeInsets.only(top: 5.sh, left: 20.sw, right: 20.sw),
        shape: RoundedRectangleBorder(borderRadius: AppSizes.borderRadius8),
        actionsPadding:
            EdgeInsets.only(left: 12.sw, right: 12.sw, top: 2.sh, bottom: 5.sh),
        backgroundColor: theme.white,
        elevation: 0.0,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.theReservationHasBeenCancelledSuccessfully,
              textAlign: TextAlign.center,
              style: theme.titleMedium
                  .copyWith(fontWeight: FontWeight.w700, color: theme.dark48),
            ),
            gapH8,
            Text(
              l10n.youCanBookAnotherAppointment,
              style: theme.labelMedium
                  .copyWith(fontWeight: FontWeight.w400, color: theme.dark48),
            ),
          ],
        ),
        actions: [
          Column(
            children: [
              CustomButton(
                width: double.infinity,
                onPressed: () {
                  context.tabsRouter.setActiveIndex(1);
                },
                backgroundColor: theme.primary,
                title: l10n.newReservation,
                titleStyle: theme.bodyMedium.copyWith(
                    color: theme.whiteF6, fontWeight: FontWeight.w500),
              ),
              gapH8,
              GestureDetector(
                onTap: () {
                  context.router.maybePop(context);
                },
                child: Text(
                  l10n.backToHome,
                  style: theme.bodyMedium.copyWith(
                      fontWeight: FontWeight.w500, color: theme.primary),
                ),
              )
            ],
          )
        ],
      );
    },
  );
}
