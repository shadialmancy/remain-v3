import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/widgets/custom_drop_down.dart';
import '../../../../app/view/app.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/constants.dart';
import '../../../core/localization/localizations.dart';

class ChangeLanguageButton extends ConsumerStatefulWidget {
  const ChangeLanguageButton({super.key});

  @override
  ConsumerState<ChangeLanguageButton> createState() =>
      _ChangeLanguageButtonState();
}

class _ChangeLanguageButtonState extends ConsumerState<ChangeLanguageButton> {
  String? lang;
  Future<void> init() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en'
            ? AppStrings.en.toUpperCase()
            : AppStrings.ar.toUpperCase();
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              CupertinoIcons.globe,
              color: theme.primary,
            ),
            gapW12,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.language,
                  style:
                      theme.bodyLargeSecondary.copyWith(color: theme.grey8080),
                ),
                gapH4,
                Text(
                  l10n.changeApplicationLanguage,
                  style: theme.bodySmallSecondary
                      .copyWith(color: theme.grey8080, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 30.sw,
          child: CustomDropDown(
            value: lang == AppStrings.en.toUpperCase() ? 0 : 1,
            items: List.generate(
              2,
              (index) {
                return DropdownMenuItem(
                  value: index,
                  child: Text(
                    index == 0 ? l10n.en : l10n.ar,
                    style: theme.bodyMediumSecondary
                        .copyWith(color: theme.grey8080),
                  ),
                );
              },
            ),
            onChanged: (value) async {
              Locale locale = await setLocale(
                Language.languageList()[value].languageCode,
              );

              // Ensure the context is still valid
              if (context.mounted) {
                // Update the language in the app state
                App.setLocale(context, locale);

                // Update the lang variable
                setState(() {
                  lang = value == 0
                      ? AppStrings.en.toUpperCase()
                      : AppStrings.ar.toUpperCase();
                });
              }
            },
            hint: '',
          ),
        )
      ],
    );
  }
}
