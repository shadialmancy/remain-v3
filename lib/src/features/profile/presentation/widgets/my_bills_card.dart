import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../medical_record/data/model/record_statement_dto/record_statement_data.dart';
import 'record_date_info.dart';
import 'record_doctor_info.dart';

class MyBillsCard extends ConsumerStatefulWidget {
  const MyBillsCard({required this.billData, super.key, required this.onView});

  final RecordStatementData? billData;
  final Function() onView;

  @override
  ConsumerState<MyBillsCard> createState() => _MyBillsCardState();
}

class _MyBillsCardState extends ConsumerState<MyBillsCard> {
  String dateFormat() {
    if (widget.billData?.transDate != null) {
      return DateFormat.yMEd().format(DateTime.parse(
        widget.billData?.transDate ?? '',
      ));
    }
    return '';
  }

  String timeFormat() {
    if (widget.billData?.transDate == null) return '';
    return DateFormat.jm()
        .format(DateTime.parse(widget.billData?.transDate ?? ''));
  }

  @override
  void initState() {
    super.initState();
    getAppLocale();
  }

  String localee = '';
  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      localee = value.languageCode.toLowerCase();
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.white,
        borderRadius: BorderRadius.circular(radius8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            spreadRadius: 0,
            blurRadius: radius4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
            decoration: BoxDecoration(
              color: theme.primary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(radius8),
                topRight: Radius.circular(radius8),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.5.sh),
              child: Row(
                children: [
                  Expanded(
                    child: RecordDateInfo(
                      date: dateFormat(),
                      time: timeFormat(),
                      doctorSpeciality: localee == AppStrings.en.toLowerCase()
                          ? widget.billData?.respCenterEngName ?? ''
                          : widget.billData?.respCenterArbName ?? '',
                    ),
                  ),
                  // const Spacer(),
                  Text(
                    '${widget.billData?.amount ?? ''} ${l10n.sar}',
                    style: theme.titleSmall.copyWith(
                      color: theme.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          gapH12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
                  child: localee == AppStrings.en.toLowerCase()
                      ? RecordDoctorInfo(
                          doctorName: widget.billData?.doctorEngName ?? '',
                          title: widget.billData?.respCenterEngName ?? '',
                        )
                      : RecordDoctorInfo(
                          doctorName: widget.billData?.doctorArbName ?? '',
                          title: widget.billData?.respCenterArbName ?? '',
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 38.sw,
                  height: 4.sh,
                  child: PrimaryButton(
                    onPressed: widget.onView,
                    title: l10n.downloadTheBill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
