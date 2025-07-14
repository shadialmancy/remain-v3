import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';
import '../providers/fetch_documents_download_provider.dart';
import '../widgets/pdf_download_button.dart';

class PdfViewUi extends ConsumerStatefulWidget {
  const PdfViewUi({super.key});
  @override
  ConsumerState<PdfViewUi> createState() => _PdfViewUiState();
}

class _PdfViewUiState extends ConsumerState<PdfViewUi> {
  PDFViewController? pdfViewController;
  bool isReady = false;
  int? pagesNum = 0;
  @override
  Widget build(BuildContext context) {
    final documentDownloadService =
        ref.watch(fetchDocumentsDownloadServiceProvider.notifier);
    final (_, l10n) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PdfDownloadButton(
          onDownload: () async {
            ProgressDialog pd = ProgressDialog(context: context);
            pd.show(max: 100, msg: l10n.fileIsDownloading);
            String? path = await documentDownloadService.downloadFile();
            pd.close();
            if (path != null && context.mounted) {
              AppToast.successToast('File downloaded to: $path/');
            }
          },
        ),
        Expanded(
          child: PDFView(
            filePath: documentDownloadService.getPdfReportFile()?.path ?? '',
            fitEachPage: true,

            enableSwipe: true,
            // defaultPage: 1,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: false,
            fitPolicy: FitPolicy.BOTH,
            preventLinkNavigation: false,
            onError: (error) {
              logger.f(error);
            },
            onPageError: (page, error) {
              logger.f('$page: ${error.toString()}');
            },
            onViewCreated: (PDFViewController vc) {
              pdfViewController = vc;
            },
            onPageChanged: (int? page, int? total) {
              logger.i('page change: $page/$total');
            },
            onRender: (int? pages) {
              setState(() {
                pagesNum = pages;
                isReady = true;
              });
            },
          ),
        ),
      ],
    );
  }
}
