import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../widgets/widgets.dart';

class TermsAndConditionUi extends StatelessWidget {
  const TermsAndConditionUi({super.key});

  Future<void> launchExternalUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    final policyItems = [
      (
        title: l10n.paymentPolicy,
        icon: AssetsHelper.paymentCardIcon,
        onTap: () => launchExternalUrl("https://www.google.com"),
      ),
      (
        title: l10n.privacyPolicy,
        icon: AssetsHelper.shieldIcon,
        onTap: () => launchExternalUrl("https://www.google.com"),
      ),
      (
        title: l10n.intellectualPropertyRightsPolicy,
        icon: AssetsHelper.shieldLockedIcon,
        onTap: () => launchExternalUrl("https://www.google.com"),
      ),
      (
        title: l10n.termsAndConditionsOfUseOfThePlatform,
        icon: AssetsHelper.termsConditionsUsePlatformIcon,
        onTap: () => launchExternalUrl("https://www.google.com"),
      ),
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: policyItems.length,
      separatorBuilder: (context, index) => Divider(
        color: theme.dark48.withValues(alpha: 0.1),
        height: 1,
      ),
      itemBuilder: (context, index) {
        final item = policyItems[index];
        return PolicyListTile(
          title: item.title,
          icon: item.icon,
          onTap: item.onTap,
        );
      },
    );
  }
}
