// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:remain/src/features/booking_schedules/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';
import '../data/models/doctors_dto/doctor_data.dart';

class DoctorsCard extends StatefulWidget {
  const DoctorsCard(
      {super.key,
      required this.doctorData,
      required this.isArabic,
      required this.onTap});
  final DoctorData? doctorData;
  final bool isArabic;
  final Function()? onTap;
  @override
  State<DoctorsCard> createState() => _DoctorsCardState();
}

class _DoctorsCardState extends State<DoctorsCard> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.greyFA,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff1E4DD91A).withValues(alpha: 0.1),
              spreadRadius: 0,
              blurRadius: 8,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 3.2.screenWidth,
            vertical: 1.9.screenHeight,
          ),
          child: Row(
            children: [
              DoctorImage(
                  image: widget.doctorData?.doctorProfile?.experienceArb),
              gapW16,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.isArabic
                        ? widget.doctorData?.arbName ?? ''
                        : widget.doctorData?.engName ?? '',
                    style: theme.labelMedium.copyWith(
                      color: theme.dark2E,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  gapH8,
                  Row(
                    children: [
                      Text(
                        widget.isArabic
                            ? widget.doctorData?.specialityArbName ?? ''
                            : widget.doctorData?.specialityEngName ?? '',
                        style: theme.labelSmall.copyWith(
                          color: theme.grey8080,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      gapW8,
                      Icon(Icons.star, color: theme.primary),
                      gapW4,
                      Text(
                        widget.doctorData?.rates.toString() ?? '',
                        style: theme.labelSmall.copyWith(
                          color: theme.grey8080,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  // gapH8,
                  // Text(
                  //   '02:00 pm - 08:00 pm',
                  //   style: theme.labelSmall.copyWith(
                  //     color: theme.grey8080,
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
