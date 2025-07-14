import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:remain/src/tabby_service.dart';
import 'app/view/app.dart';
import 'src/core/constants/constants.dart';
import 'src/core/providers/app_startup_provider.dart';
import 'src/core/themes/themes.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'dart:io';
import 'src/features/authentication/data/models/pat_rel.dart';
import 'src/features/authentication/data/models/patient_info.dart';
import 'src/features/authentication/data/models/vital_signs.dart';
import 'src/features/offers/domain/entities/offer_cart_entity/offer_cart_item.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDirectory.path);
  Hive.registerAdapter(PatientInfoAdapter());
  Hive.registerAdapter(PatRelAdapter());
  Hive.registerAdapter(VitalSignsAdapter());
  Hive.registerAdapter(OfferCartItemyAdapter());

  final ProviderContainer container = ProviderContainer();
  await container.read(appStartupProvider.future);
  await FlutterDownloader.initialize(debug: true, ignoreSsl: true);
  HttpOverrides.global = MyHttpOverrides();
  AdaptiveUi.init();
  TabbyService().initializeTabby();
  await await FlutterFlowTheme.initialize();
  if (kReleaseMode) {
    ErrorWidget.builder = (_) => const Center(
          child: Text('An error occurred. Please restart the app.'),
        );
  }

  runApp(UncontrolledProviderScope(
    container: container,
    child: const App(),
  ));
}
