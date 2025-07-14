import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_documents_download_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../data/model/models.dart';

class SickLeaveContainer extends ConsumerWidget {
  const SickLeaveContainer({super.key, this.data});
  final SickLeaveData? data;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final reportRef = ref.read(fetchDocumentsDownloadServiceProvider.notifier);
    final date =
        DateFormat.yMMMEd().format(DateTime.parse(data?.regDate ?? ''));
    return Container(
      margin: EdgeInsets.only(bottom: 2.sh),
      decoration: BoxDecoration(color: theme.greyFA, boxShadow: [
        BoxShadow(color: theme.fullDark.withValues(alpha: 0.08), blurRadius: 4)
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                SvgPicture.asset(AssetsHelper.receiptIcon),
                gapW8,
                Text(
                  date,
                  style: theme.labelMediumSecondary.copyWith(
                    color: theme.primary,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH16,
                Text(
                  data?.trnCodeCol ?? '',
                  style:
                      theme.labelMediumSecondary.copyWith(color: theme.dark2E),
                ),
                gapH8,
                // Text(
                //   "د.نهال محمد",
                //   style: theme.labelMedium.copyWith(
                //       color: theme.grey8080, fontWeight: FontWeight.normal),
                // ),
                Text(
                  data?.spName ?? '',
                  style: theme.labelMedium.copyWith(
                      color: theme.grey8080, fontWeight: FontWeight.normal),
                ),
                gapH16,
                SizedBox(
                  width: 55.sw,
                  height: 8.sw,
                  child: PrimaryButton(
                      onPressed: () async {
                        ProgressDialog pd = ProgressDialog(context: context);
                        pd.show(
                          msg: l10n.fileIsOpening,
                          backgroundColor: theme.whiteColor,
                          borderRadius: radius12,
                          msgColor: theme.primary,
                          progressBgColor: theme.primary,
                          progressValueColor: theme.white,
                        );
                        await reportRef.getDocumentsToDownload(
                          rptID: data?.rptId ?? '',
                          spName: data?.spName ?? '',
                          value: data?.trnCodeCol ?? '',
                        );
                        pd.close();
                        if (reportRef.getDocument() != null) {
                          if (context.mounted) {
                            context.router.push(const PdfPreviewRoute());
                          }
                        }
                      },
                      title: l10n.downloadTreatmentPlan),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
