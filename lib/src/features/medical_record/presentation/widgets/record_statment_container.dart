import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/localization/locale_constants.dart';
import '../../data/model/record_statement_dto/record_statement_data.dart';

class RecordStatmentContainer extends StatefulWidget {
  const RecordStatmentContainer({super.key, this.data});
  final RecordStatementData? data;

  @override
  State<RecordStatmentContainer> createState() =>
      _RecordStatmentContainerState();
}

class _RecordStatmentContainerState extends State<RecordStatmentContainer> {
  String lang = '';

  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      lang = value.languageCode.toLowerCase();
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    getAppLocale();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final dateTime = DateFormat('EEE, MMMM d, yyyy')
        .format(DateTime.parse(widget.data?.transDate ?? ''));
    return Container(
      margin: EdgeInsets.only(bottom: 2.sh),
      decoration: BoxDecoration(
          color: theme.greyFA,
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
                color: theme.secondaryBorderColor,
                borderRadius: const BorderRadius.only(
                  topLeft: AppSizes.radius8,
                  topRight: AppSizes.radius8,
                ),
                border: Border.all(color: theme.periwinkle)),
            child: Row(
              children: [
                SvgPicture.asset(AssetsHelper.clockIcon),
                gapW8,
                Text(
                  dateTime,
                  style: theme.bodySmall.copyWith(
                      color: theme.primary, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.sw, vertical: 1.5.sh),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AssetsHelper.medicalRecordIcon,
                  colorFilter: ColorFilter.mode(theme.primary, BlendMode.srcIn),
                  width: 6.sw,
                ),
                gapW16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lang == 'ar'
                          ? widget.data?.respCenterArbName ?? ''
                          : widget.data?.respCenterEngName ?? '',
                      style: theme.bodyMedium.copyWith(
                          color: theme.primary, fontWeight: FontWeight.normal),
                    ),
                    // Text(
                    //   "تبييض وصحة الأسنان ",
                    //   style: theme.labelMedium.copyWith(
                    //       color: theme.grey8080, fontWeight: FontWeight.normal),
                    // ),
                    gapW12,
                    Text(
                      lang == 'ar'
                          ? widget.data?.doctorArbName ?? ''
                          : widget.data?.doctorEngName ?? '',
                      style: theme.labelMedium.copyWith(
                          color: theme.grey8080, fontWeight: FontWeight.normal),
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
