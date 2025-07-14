import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../domain/repositories/medical_reports_repository.dart';
part 'fetch_documents_download_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class FetchDocumentsDownloadService extends _$FetchDocumentsDownloadService {
  @override
  FutureOr<String?> build() {
    return _documentsToDownload;
  }

  String? _documentsToDownload;
  String? getDocument() => _documentsToDownload;
  Future<String?> getDocumentsToDownload({
    String? value,
    String? spName,
    String? rptID,
  }) async {
    try {
      _documentsToDownload = await ref
          .read(medicalReportsRepositoryProvider.notifier)
          .getDocumentsToDownload(value ?? '', spName ?? '', rptID ?? '');
      logger.i('Downloaded report: $_documentsToDownload');
      log(_documentsToDownload.toString());
      //  await requestPermission();
      await createFileOfPdfUrl();
      return _documentsToDownload;
    } catch (e, stack) {
      throw CustomError('Failed to download patient report',
          err: e, stackTrace: stack);
    }
  }

  File? _pdfReportFile;
  File? getPdfReportFile() => _pdfReportFile;

  Future<void> createFileOfPdfUrl() async {
    await requestPermission();

    Completer<File> completer = Completer();
    try {
      final url = _documentsToDownload;
      if (url != null) {
        final filename = url.substring(url.lastIndexOf("/") + 1);
        var request = await HttpClient().getUrl(Uri.parse(url));
        var response = await request.close();
        var bytes = await consolidateHttpClientResponseBytes(response);
        var dir = Platform.isAndroid
            ? await getDownloadsDirectory()
            : await getApplicationDocumentsDirectory();

        File file = File("${dir?.path}/$filename");
        _pdfReportFile = await file.writeAsBytes(bytes, flush: true);
        logger.i('Downloaded report: $_pdfReportFile');
        completer.complete(file);
      }
    } catch (e) {
      throw e.toString();
      //   throw Exception('Error parsing asset file!');
    }
  }

  Future<void> sharePdfReport() async {
    final file = _pdfReportFile;
    if (file != null && await file.exists()) {
      final xFile = XFile(file.path, mimeType: 'application/pdf');

      final params = ShareParams(files: [
        XFile.fromData(file.readAsBytesSync(), mimeType: 'application/pdf')
      ], fileNameOverrides: [
        '${xFile.name}.pdf'
      ]);

      SharePlus.instance.share(params);
    } else {
      throw CustomError('No file available to share.');
    }
  }

  Future<String?> downloadFile() async {
    Directory? directory;
    try {
      directory = Platform.isAndroid
          ? await getExternalStorageDirectory()
          : await getApplicationDocumentsDirectory();
      String fileName = _documentsToDownload!
          .substring(_documentsToDownload!.lastIndexOf("/") + 1);
      final taskId = await FlutterDownloader.enqueue(
        url: _documentsToDownload ?? '',
        savedDir: directory?.path ?? '',
        fileName: fileName,
        showNotification: true,
        openFileFromNotification: true,
      );
      logger.i('task id: $taskId');
      if (taskId != null) {
        FlutterDownloader.registerCallback((id, status, progress) async {
          final taskStatus = DownloadTaskStatus.values[status];

          if (taskStatus == DownloadTaskStatus.complete) {
            logger.i('Download completed: $id');
            await sharePdfReport();
          } else if (taskStatus == DownloadTaskStatus.failed) {
            logger.e('Download failed: $id');
          }
        });
      }
      await sharePdfReport();
    } catch (e) {
      logger.e('Error downloading file: $e');
    }
    return directory?.path;
  }

  Future<bool> requestPermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      status = await Permission.storage.request();
    }
    return status.isGranted;
  }
}
