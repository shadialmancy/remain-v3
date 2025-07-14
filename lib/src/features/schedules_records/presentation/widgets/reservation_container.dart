import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/localization/localizations.dart';
import '../../../booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';

class ReservationContainer extends ConsumerStatefulWidget {
  const ReservationContainer(
      {super.key,
      required this.reservationButtons,
      this.isDisabled = false,
      required this.data});
  final Widget reservationButtons;
  final bool isDisabled;
  final PatientBookingInfo? data;

  @override
  ConsumerState<ReservationContainer> createState() =>
      _ReservationContainerState();
}

class _ReservationContainerState extends ConsumerState<ReservationContainer> {
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
      margin: EdgeInsets.only(bottom: 2.sh),
      decoration: BoxDecoration(
          color: widget.isDisabled ? theme.whiteF2 : theme.greyFA,
          borderRadius: AppSizes.borderRadius8,
          boxShadow: [
            BoxShadow(
              color: theme.fullDark.withValues(alpha: 0.10),
              blurRadius: 8,
            )
          ]),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 2.sw, vertical: 3.sw),
            decoration: BoxDecoration(
                color: widget.isDisabled
                    ? theme.greyE6
                    : theme.secondaryBorderColor,
                borderRadius: const BorderRadius.only(
                  topLeft: AppSizes.radius8,
                  topRight: AppSizes.radius8,
                ),
                border: Border.all(
                    color:
                        widget.isDisabled ? theme.greyD8 : theme.periwinkle)),
            child: Row(
              children: [
                SvgPicture.asset(widget.isDisabled
                    ? AssetsHelper.clockDisabledIcon
                    : AssetsHelper.clockIcon),
                gapW8,
                Text(
                  // Try-catch for error handling when parsing
                  () {
                    try {
                      DateTime parsedDate =
                          DateFormat('yyyy-MM-dd hh:mm a', 'en_US')
                              .parse(widget.data?.appTime ?? '');
                      return DateFormat('EEE d MMM yyyy h:mm a', 'ar_SA')
                          .format(parsedDate);
                    } catch (e) {
                      return 'Invalid Date'; // Fallback if parsing fails
                    }
                  }(),
                  style: theme.bodySmall.copyWith(
                    color: widget.isDisabled ? theme.grey8080 : theme.primary,
                    fontWeight: FontWeight.w500,
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
                          ? widget.data?.docArbName ?? ''
                          : widget.data?.docEngName ?? '',
                      style: theme.bodyMedium.copyWith(
                          color:
                              widget.isDisabled ? theme.dark2E : theme.primary,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      _language == 'ar'
                          ? widget.data?.docSpecArbName ?? ''
                          : widget.data?.docSpecEngName ?? '',
                      style: theme.labelMedium.copyWith(
                          color: theme.grey8080, fontWeight: FontWeight.normal),
                    ),
                    gapH12,
                    Row(
                      children: [
                        SvgPicture.asset(widget.isDisabled
                            ? AssetsHelper.hospitalDisabledIcon
                            : AssetsHelper.hospitalIcon),
                        gapW12,
                        Text(
                          _language == 'ar'
                              ? widget.data?.locationArbAdress ?? ''
                              : widget.data?.locationEngAdress ?? '',
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
          ),
          widget.reservationButtons
        ],
      ),
    );
  }
}
