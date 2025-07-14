import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/routes/app_router.dart';
import '../../../medical_record/domain/entities/entities.dart';
import '../../../medical_record/presentation/providers/fetch_documents_download_provider.dart';
import 'my_bills_card.dart';

class MyBillBody extends ConsumerWidget {
  const MyBillBody({
    super.key,
    this.bills,
  });
  final RecordStatementEntity? bills;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportRef = ref.read(fetchDocumentsDownloadServiceProvider.notifier);
    final (theme, l10n) = appSettingsRecord(context);

    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: bills?.data?.length ?? 0,
      itemBuilder: (context, index) {
        final bill = bills?.data?[index];
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.4.sw,
            vertical: 1.6.sh,
          ),
          child: MyBillsCard(
            billData: bill,
            onView: () async {
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
                value: bill?.thId.toString(),
                spName: bill?.reportSpName,
                rptID: bill?.rptId,
              );
              pd.close();
              if (reportRef.getDocument() != null) {
                if (context.mounted) {
                  context.router.push(const PdfPreviewRoute());
                }
              }
            },
          ),
        );
      },
    );
  }
}
