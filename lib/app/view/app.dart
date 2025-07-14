import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../l10n/generated/l10n.dart';
import '../../src/core/constants/constants.dart';
import '../../src/core/helpers/session_manager.dart';
import '../../src/core/localization/localizations.dart';
import '../../src/core/routes/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../src/core/themes/themes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:month_year_picker/month_year_picker.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
  static void setLocale(BuildContext context, Locale newLocale) async {
    _AppState? state = context.findAncestorStateOfType<_AppState>();
    state?.setLocale(newLocale);
    //await Restart.restartApp();
  }
}

class _AppState extends ConsumerState<App> {
  final _appRouter = AppRouter();
  Locale? _locale;
  Future<void> setLocale(Locale loc) async {
    logger.i('setLocale: ${loc.languageCode}');
    await sessionManager.setLocale(localee: loc.languageCode);
    setState(() {
      _locale = loc;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      logger.i(locale.languageCode);

      return {setLocale(locale)};
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return ResponsiveApp(
      builder: (context) {
        return MaterialApp.router(
          title: 'Remain',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            MonthYearPickerLocalizations.delegate,
          ],
          locale: _locale,
          supportedLocales: AppLocalizations.delegate.supportedLocales,
          themeMode: FlutterFlowTheme.themeMode,
          theme: ThemeData(
            scrollbarTheme: ScrollbarThemeData(
              thumbVisibility: WidgetStateProperty.all(false),
              trackVisibility: WidgetStateProperty.all(false),
              interactive: true,
              thumbColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.dragged)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                if (states.contains(WidgetState.hovered)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                return FlutterFlowTheme.of(context).whiteColor;
              }),
            ),
          ),
          darkTheme: ThemeData(
            scrollbarTheme: ScrollbarThemeData(
              thumbVisibility: WidgetStateProperty.all(false),
              trackVisibility: WidgetStateProperty.all(false),
              interactive: true,
              thumbColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.dragged)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                if (states.contains(WidgetState.hovered)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                return FlutterFlowTheme.of(context).whiteColor;
              }),
            ),
          ),
          routerConfig: _appRouter.config(
            navigatorObservers: () => [MyObserver()],
          ),
          builder: (BuildContext context, Widget? child) {
            if (child == null) {
              logger.e('child is null', stackTrace: StackTrace.current);
              return Container();
            }
            return child;
          },
        );
      },
    );
  }
}
