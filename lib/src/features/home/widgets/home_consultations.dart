import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/home/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../dashboard/provider/motion_controller.dart';
import '../../../core/constants/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../schedules_records/presentation/provider/schedule_service.dart';

class HomeConsultations extends ConsumerWidget {
  const HomeConsultations({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    return AsyncValueWidget(
        value: ref.watch(scheduleServiceProvider),
        data: (allBookings) {
          if (allBookings == null || allBookings.data == null) {
            return const SizedBox();
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    context.tabsRouter.setActiveIndex(3);
                    ref.read(motionControllerProvider.notifier).setIndex(3);
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        l10n.upcomingAppointments,
                        style: theme.titleSmall.copyWith(
                          color: const Color(0xff181C1F),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      gapW12,
                      Container(
                        alignment: Alignment.center,
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: const Color(0xffB9C8F3),
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '2',
                          style: theme.labelMedium.copyWith(
                            color: const Color(0xff181C1F),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        l10n.viewAll2,
                        style: theme.labelMedium.copyWith(
                          color: const Color(0xff4B71E1),
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      gapW4,
                      Icon(
                        MdiIcons.arrowLeft,
                        color: const Color(0xff4B71E1),
                        size: 16,
                      ),
                    ],
                  ),
                ),
                gapH8,
                ConsultationCard(
                  patientBookingInfo: allBookings.data?.firstWhere(
                    (element) {
                      DateTime parsedDate =
                          DateFormat('yyyy-MM-dd hh:mm a', 'en_US')
                              .parse(element.appTime ?? '');
                      return parsedDate.isAfter(DateTime.now()) ||
                          parsedDate.day == DateTime.now().day;
                    },
                  ),
                ),
                gapH16,
              ],
            ),
          );
        });
  }
}
