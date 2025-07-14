import 'package:tabby_flutter_inapp_sdk/tabby_flutter_inapp_sdk.dart';

class TabbyService {
  static const String _tabbyApiKey =
      'pk_test_ed2366a5-70b6-4afb-8afb-ab6fc7fa324b';
  static const String tabbyMerchantCode = 'Alharamin_medical';
  void initializeTabby() {
    TabbySDK().setup(
      withApiKey: _tabbyApiKey,
    );
  }
}
