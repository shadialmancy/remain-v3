import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo(
      {super.key,
      required this.doctorName,
      required this.respCenterName,
      required this.speciality});
  final String doctorName;
  final String respCenterName;
  final String speciality;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Row(
      children: [
        CircleAvatar(
          radius: 5.sw,
          child: Image.asset(AssetsHelper.femaleDoctor),
        ),
        gapW16,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorName,
                style: theme.bodyMediumSecondary.copyWith(color: theme.dark2E),
              ),
              Text(
                "استشاري الجهاز الهضمي",
                style: theme.labelMedium.copyWith(
                    color: theme.grey8080, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        gapW8,
        SvgPicture.asset(AssetsHelper.hospitalDisabledIcon),
        gapW8,
        Text(
          speciality,
          style: theme.labelMedium
              .copyWith(color: theme.dark2E, fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
