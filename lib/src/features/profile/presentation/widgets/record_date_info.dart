import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../../../core/constants/constants.dart';

class RecordDateInfo extends StatelessWidget {
  const RecordDateInfo({
    super.key,
    required this.date,
    required this.time,
    required this.doctorSpeciality,
  });
  final String date;
  final String time;
  final String doctorSpeciality;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Row(
      children: [
        Icon(
          Icons.file_open_outlined,
          color: theme.grey,
        ),
        gapW8,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$date, $time',
                style: theme.labelMedium.copyWith(
                  color: theme.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              AutoSizeText(
                doctorSpeciality,
                style: theme.labelLarge.copyWith(
                  color: theme.white,
                  fontWeight: FontWeight.w700,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
