import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';

class ContactUsUi extends StatelessWidget {
  const ContactUsUi({super.key});

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
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            color: theme.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: () {
              openWhatsApp("966122522999");
            },
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetsHelper.whatsappIcon),
                  gapW16,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.contactUsViaWhatsApp,
                          style: theme.labelLarge
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        gapH4,
                        Text(
                          '966122522999',
                          style: theme.labelMedium.copyWith(
                              fontWeight: FontWeight.w400, color: theme.dark78),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: const Icon(Icons.arrow_forward_ios, size: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
