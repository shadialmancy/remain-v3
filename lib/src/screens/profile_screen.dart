import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/features/profile/presentation/ui/profile_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        centerTitle: true,
        title: Text(
          l10n.profile,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        backButton: IconButton(
          padding: EdgeInsets.zero,
          icon: SvgPicture.asset(
            AssetsHelper.settingsIcon2,
          ),
          onPressed: () {
            context.router.push(const SettingsRoute());
          },
        ),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ProfileUi(),
        tablet: const ProfileUi(),
        desktop: const ProfileUi(),
      ),
    );
  }
}
