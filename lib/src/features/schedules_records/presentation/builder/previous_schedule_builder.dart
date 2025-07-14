import 'package:flutter/material.dart';
import 'package:remain/src/features/schedules_records/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/constants.dart';
import '../../../booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';

class PreviousScheduleBuilder extends StatelessWidget {
  const PreviousScheduleBuilder({super.key, required this.data});
  final List<PatientBookingInfo>? data;

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return data?.isEmpty ?? true
        ? Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            gapH48,
            ScheduleEmpty(title: l10n.thereAreNoPreviousAppointments),
          ])
        : SingleChildScrollView(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 3.sh),
            child: Column(
              children: List.generate(
                data?.length ?? 0,
                (index) {
                  return ReservationContainer(
                    data: data?[index],
                    isDisabled: true,
                    reservationButtons: const SizedBox(),
                    // reservationButtons: Padding(
                    //   padding: EdgeInsets.only(
                    //     left: 4.sw,
                    //     right: 4.sw,
                    //     bottom: 2.sh,
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       ReservationButton(
                    //           title: l10n.reservationDetails,
                    //           icon: AssetsHelper.infoIcon),
                    //     ],
                    //   ),
                    // ),
                  );
                },
              ),
            ),
          );
  }
}
