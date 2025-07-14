import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../app/view/app.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/routes/app_router.dart';
import '../widgets/widgets.dart';

class SettingsUi extends StatefulWidget {
  const SettingsUi({super.key});

  @override
  State<SettingsUi> createState() => _SettingsUiState();
}

class _SettingsUiState extends State<SettingsUi> {
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

  void openWhatsApp(String phoneNumber) async {
    final whatsappUrl = Uri.parse("https://wa.me/$phoneNumber");

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      throw "Could not launch WhatsApp";
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 5.1.sw, vertical: 2.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.language,
                style: theme.bodyMedium.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: theme.darkText),
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
          gapH12,
          //add dark mode functionality
          // ListTile(
          //   tileColor: Colors.white,
          //   contentPadding: const EdgeInsets.only(left: 16.0, right: 8.0),
          //   trailing: Transform.scale(
          //     scale: 0.7,
          //     child: CupertinoSwitch(
          //       value: isDarkMode,
          //       onChanged: (value) {
          //         setState(() {
          //           isDarkMode = value;
          //         });
          //       },
          //       activeTrackColor: theme.primary,
          //       inactiveTrackColor: Colors.grey,
          //     ),
          //   ),
          //   title: Text(
          //     l10n.darkMode,
          //     style: theme.labelLarge.copyWith(fontWeight: FontWeight.w500),
          //   ),
          //   onTap: () {
          //     setState(() {
          //       isDarkMode = !isDarkMode;
          //     });
          //   },
          // ),
          // gapH12,
          ListTile(
            tileColor: Colors.white,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            title: Text(
              l10n.termsAndConditions,
              style: theme.labelLarge.copyWith(fontWeight: FontWeight.w500),
            ),
            onTap: () {
              context.router.push(const TermsAndConditionRoute());
            },
          ),
          gapH12,
          ListTile(
            tileColor: Colors.white,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            title: Text(
              l10n.contactUs,
              style: theme.labelLarge.copyWith(fontWeight: FontWeight.w500),
            ),
            onTap: () {
              context.router.push(const ContactUsRoute());
            },
          ),
        ],
      ),
    );
  }
}
