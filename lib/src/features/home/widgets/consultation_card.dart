import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../core/localization/localizations.dart';
import '../../booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';

class ConsultationCard extends StatefulWidget {
  const ConsultationCard({
    super.key,
    required this.patientBookingInfo,
  });
  final PatientBookingInfo? patientBookingInfo;

  @override
  State<ConsultationCard> createState() => _ConsultationCardState();
}

class _ConsultationCardState extends State<ConsultationCard> {
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
    final (theme, _) = appSettingsRecord(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 5.3.sw,
              vertical: 2.sh,
            ),
            decoration: BoxDecoration(
              color: theme.secondaryBorderColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(MdiIcons.clockTimeFive, color: theme.primary, size: 16),
                gapW8,
                Text(
                  () {
                    try {
                      DateTime parsedDate =
                          DateFormat('yyyy-MM-dd hh:mm a', 'en_US')
                              .parse(widget.patientBookingInfo?.appTime ?? '');
                      return DateFormat('EEE d MMM yyyy h:mm a', 'ar_SA')
                          .format(parsedDate);
                    } catch (e) {
                      return 'Invalid Date';
                    }
                  }(),
                  style: theme.labelSmall.copyWith(
                    color: theme.primary,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  _language == 'ar'
                      ? widget.patientBookingInfo?.locationArbAdress ?? ''
                      : widget.patientBookingInfo?.locationEngAdress ?? '',
                  style: theme.labelSmall.copyWith(
                    color: theme.dark2E,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.sw, vertical: 2.sh),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 5.sw,
                  backgroundColor: theme.primary,
                  child: Icon(
                    Icons.person,
                    size: 5.sw,
                    color: theme.white,
                  ),
                ),
                gapW16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _language == 'ar'
                          ? widget.patientBookingInfo?.docArbName ?? ''
                          : widget.patientBookingInfo?.docEngName ?? '',
                      style: theme.titleSmall.copyWith(
                        color: theme.primary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      _language == 'ar'
                          ? widget.patientBookingInfo?.docSpecArbName ?? ''
                          : widget.patientBookingInfo?.docSpecEngName ?? '',
                      style: theme.labelMedium.copyWith(
                        color: theme.grey8080,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
