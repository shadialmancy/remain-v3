import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class PdfDownloadButton extends StatelessWidget {
  const PdfDownloadButton({super.key, required this.onDownload});
  final Function() onDownload;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.sw),
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomButton(
          onPressed: onDownload,
          title: l10n.downloadFile,
          titleStyle: theme.titleSmall.copyWith(color: theme.primary),
          backgroundColor: theme.primaryBackground,
          gap: AppSizes.p2,
          isDisabled: false,
          icon: Icon(
            Icons.file_download_outlined,
            color: theme.primary,
          ),
        ),
      ),
    );
  }
}
