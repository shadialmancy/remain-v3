import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../app/view/app.dart';
import '../constants/constants.dart';
import '../localization/localizations.dart';

void showLanguageBottomSheet(BuildContext context) {
  final (theme, _) = appSettingsRecord(context);
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(Language.languageList().length, (index) {
            return ListTile(
              title: Text(
                Language.languageList()[index].name,
                style: theme.bodySmall,
              ),
              onTap: () async {
                Locale locale = await setLocale(
                  Language.languageList()[index].languageCode,
                );
                if (context.mounted) {
                  App.setLocale(context, locale);
                  context.router.maybePop();
                }
              },
            );
          }),
        ),
      );
    },
  );
}
