import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/features/profile/presentation/widgets/widgets.dart';

import '../../../../../app/view/app.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';

class ChangeLanguageUi extends StatefulWidget {
  const ChangeLanguageUi({super.key});

  @override
  State<ChangeLanguageUi> createState() => _ChangeLanguageUiState();
}

class _ChangeLanguageUiState extends State<ChangeLanguageUi> {
  String? lang;
  Future<void> init() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en' ? AppStrings.en : AppStrings.ar;
      });
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 5.1.sw, vertical: 6.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.language,
            style: theme.bodyLarge.copyWith(fontWeight: FontWeight.w500),
          ),
          gapH8,
          LanguageRadioButton(
            leading: AssetsHelper.saudiArabiaFlagIcon,
            value: AppStrings.ar,
            title: l10n.ar,
            groupValue: lang,
            onChanged: (value) async {
              lang = value;
              Locale locale = await setLocale(
                Language.languageList()[1].languageCode,
              );
              if (context.mounted) {
                App.setLocale(context, locale);
              }
            },
          ),
          gapH8,
          LanguageRadioButton(
            leading: AssetsHelper.americaFlagIcon,
            value: AppStrings.en,
            title: l10n.en,
            groupValue: lang,
            onChanged: (value) async {
              lang = value;
              Locale locale = await setLocale(
                Language.languageList()[0].languageCode,
              );
              if (context.mounted) {
                App.setLocale(context, locale);
              }
            },
          ),
        ],
      ),
    );
  }
}
