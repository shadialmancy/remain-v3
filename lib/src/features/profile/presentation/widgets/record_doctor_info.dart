import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class RecordDoctorInfo extends StatelessWidget {
  const RecordDoctorInfo({
    super.key,
    required this.title,
    required this.doctorName,
  });
  final String title;
  final String doctorName;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.titleSmall.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          doctorName,
          style: theme.labelLargeSecondary.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        gapH8,
      ],
    );
  }
}
