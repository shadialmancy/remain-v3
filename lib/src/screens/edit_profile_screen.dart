import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/profile/presentation/ui/edit_profile_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        title: Text(
          l10n.editProfile,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const EditProfileUi(),
        tablet: const EditProfileUi(),
        desktop: const EditProfileUi(),
      ),
    );
  }
}
