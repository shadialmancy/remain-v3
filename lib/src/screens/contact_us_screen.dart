import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/profile/presentation/ui/contact_us_ui.dart';

@RoutePage()
class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        color: theme.white,
        title: Text(
          l10n.contactUs,
          style: theme.titleMedium.copyWith(
            color: theme.dark48,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ContactUsUi(),
        tablet: const ContactUsUi(),
        desktop: const ContactUsUi(),
      ),
    );
  }
}
