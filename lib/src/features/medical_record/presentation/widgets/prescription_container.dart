import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/routes/app_router.dart';
import '../../data/model/patient_prescription_dto/prescription_info.dart';
import '../providers/fetch_documents_download_provider.dart';

class PrescriptionContainer extends ConsumerWidget {
  const PrescriptionContainer({super.key, this.data, this.lang});
  final PrescriptionInfo? data;
  final String? lang;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final dateTime = DateFormat('EEE, MMMM d, yyyy')
        .format(DateTime.parse(data?.transDate ?? ''));
    final documentDownloadService =
        ref.watch(fetchDocumentsDownloadServiceProvider.notifier);

    return GestureDetector(
      onTap: () async {
        log("message");
        ProgressDialog pd = ProgressDialog(context: context);
        pd.show(
          msg: l10n.fileIsOpening,
          backgroundColor: theme.whiteColor,
          borderRadius: radius12,
          msgColor: theme.primary,
          progressBgColor: theme.primary,
          progressValueColor: theme.white,
        );
        await documentDownloadService.getDocumentsToDownload(
          rptID: data?.rptId,
          spName: data?.reportSpName,
          value: data?.requestNum.toString(),
        );
        pd.close();

        if (documentDownloadService.getDocument() != null) {
          if (context.mounted) {
            context.router.push(const PdfPreviewRoute());
          }
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.5.sw, vertical: 3.sw),
        margin: EdgeInsets.only(bottom: 1.sh),
        decoration: BoxDecoration(
            color: theme.greyFA,
            borderRadius: AppSizes.borderRadius8,
            boxShadow: [
              BoxShadow(
                  blurRadius: 8, color: theme.fullDark.withValues(alpha: 0.1))
            ]),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(AssetsHelper.clockOutlinedIcon),
                gapW8,
                Text(
                  dateTime,
                  style: theme.bodySmall.copyWith(color: theme.primary),
                ),
              ],
            ),
            Divider(
              color: theme.whiteE7,
              thickness: 1,
            ),
            Row(
              children: [
                SvgPicture.asset(AssetsHelper.bloodTest2Icon),
                gapW8,
                Text(
                  lang == 'ar'
                      ? data?.doctorArbName ?? ''
                      : data?.doctorEngName ?? '',
                  style: theme.bodySmall.copyWith(color: theme.grey8080),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
