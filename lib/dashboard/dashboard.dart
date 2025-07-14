import 'package:auto_route/auto_route.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/localization/locale_constants.dart';
import 'package:remain/src/core/themes/themes.dart';
import '../src/core/constants/constants.dart';
import '../src/core/providers/app_startup_provider.dart';
import '../src/core/routes/app_router.dart';
import '../src/core/widgets/widgets.dart';
import 'package:remain/dashboard/provider/motion_controller.dart';

@RoutePage()
class DashboardLayoutScreen extends ConsumerStatefulWidget {
  const DashboardLayoutScreen({super.key});

  @override
  ConsumerState<DashboardLayoutScreen> createState() =>
      _DashboardLayoutScreenState();
}

class _DashboardLayoutScreenState extends ConsumerState<DashboardLayoutScreen> {
  bool isAr = false;
  bool isReady = false;

  @override
  void initState() {
    super.initState();
    getLocale().then((value) {
      setState(() {
        isAr = value.languageCode.toLowerCase() == 'ar';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AppStartupWidget(
      appStartupProvider: appStartupProvider,
      onLoaded: (context) {
        return Directionality(
          textDirection: isAr ? TextDirection.rtl : TextDirection.ltr,
          child: AutoTabsScaffold(
            backgroundColor: theme.whiteColor,
            homeIndex: ref.watch(motionControllerProvider),
            resizeToAvoidBottomInset: false,
            routes: const [
              HelpRoute(),
              FamilyAndRelativesRoute(),
              HomeRoute(),
              SchedulesRecordsRoute(),
              ProfileRoute(),
            ],
            animationCurve: Curves.fastLinearToSlowEaseIn,
            bottomNavigationBuilder: (_, tabsRouter) {
              final currentIndex = ref.watch(motionControllerProvider);

              if (!isReady) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  tabsRouter.setActiveIndex(currentIndex);
                  setState(() {
                    isReady = true;
                  });
                });
              }
              return ConvexAppBar(
                key: ValueKey(currentIndex),
                initialActiveIndex: currentIndex,
                elevation: 0,
                backgroundColor: theme.whiteColor,
                style: TabStyle.react,
                height: 60,
                activeColor: theme.primary,
                color: theme.primary,
                onTap: (int index) {
                  tabsRouter.setActiveIndex(index);
                  ref.read(motionControllerProvider.notifier).setIndex(index);
                },
                items: [
                  TabItem(
                    icon: SvgPicture.asset(AssetsHelper.chatIcon),
                    activeIcon: _activeIcon(
                      icon: AssetsHelper.activeChatIcon,
                      theme: theme,
                    ),
                    title: l10n.help,
                  ),
                  TabItem(
                    icon: SvgPicture.asset(AssetsHelper.peopleIcon),
                    activeIcon: _activeIcon(
                      icon: AssetsHelper.activePeopleIcon,
                      theme: theme,
                    ),
                    title: isAr ? l10n.familyAndRelatives : l10n.family,
                  ),
                  TabItem(
                    icon: SvgPicture.asset(AssetsHelper.navHomeLightIcon),
                    activeIcon: _activeIcon(
                      icon: AssetsHelper.calendarAddIcon,
                      theme: theme,
                    ),
                    title: isAr ? l10n.bookAppointment : l10n.book,
                  ),
                  TabItem(
                    icon: SvgPicture.asset(AssetsHelper.navRecordsIcon),
                    activeIcon: _activeIcon(
                      icon: AssetsHelper.activeReportIcon,
                      theme: theme,
                    ),
                    title: isAr ? l10n.myAppointments : l10n.bookings,
                  ),
                  TabItem(
                    icon: SvgPicture.asset(AssetsHelper.navProfileIcon),
                    activeIcon: _activeIcon(
                      icon: AssetsHelper.activeProfileIcon,
                      theme: theme,
                    ),
                    title: l10n.profile,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

Widget _activeIcon({String? icon, FlutterFlowTheme? theme}) {
  return Container(
    alignment: Alignment.center,
    width: 35,
    height: 35,
    decoration: BoxDecoration(
      color: theme?.primary,
      borderRadius: BorderRadius.circular(50),
    ),
    child: SvgPicture.asset(
      icon ?? '',
      width: 24,
    ),
  );
}
