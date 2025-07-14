import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_documents_download_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/routes/app_router.dart';
import '../../data/model/patient_lab_results_dto/lab_results_data.dart';

class TestResultContainer extends ConsumerStatefulWidget {
  const TestResultContainer(
      {super.key, this.isRay, this.withoutArrow, this.data});
  final bool? isRay;
  final bool? withoutArrow;
  final LabResultsData? data;

  @override
  ConsumerState<TestResultContainer> createState() =>
      _TestResultContainerState();
}

class _TestResultContainerState extends ConsumerState<TestResultContainer> {
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
    final (theme, l10n) = appSettingsRecord(context);
    final dateTime = DateFormat('EEE, MMM d')
        .format(DateTime.parse(widget.data?.transDate ?? ''));
    final documentDownloadService =
        ref.watch(fetchDocumentsDownloadServiceProvider.notifier);

    return GestureDetector(
      onTap: () async {
        final spName = widget.data?.reportSpName;
        final rptID = widget.data?.rptId;
        final value = widget.data?.thId;
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
          rptID: rptID,
          spName: spName,
          value: value.toString(),
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
                SvgPicture.asset(widget.isRay ?? false
                    ? AssetsHelper.rayTestIcon
                    : AssetsHelper.bloodTest2Icon),
                gapW8,
                Text(
                  lang == 'ar'
                      ? widget.data?.respCenterArbName ?? ''
                      : widget.data?.respCenterEngName ?? '',
                  style: theme.bodySmall.copyWith(color: theme.grey8080),
                ),
                const Spacer(),
                widget.withoutArrow ?? false
                    ? Container()
                    : Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: theme.grey8080,
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
