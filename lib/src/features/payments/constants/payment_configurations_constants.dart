import 'package:moyasar/moyasar.dart';

class AppPaymentConfigsStrings {
  static const String testPublishableApiKey =
      'pk_test_XGtmEGBJEPxB1h2hQssCrsxdwLUk4cVy7jCHEV4L';

  static const String livePublishableApiKey =
      'pk_live_ua2gHQZWg2brp2dQYS3rFX9LW5ZV6QTt4Q3PwZAP';
  static const Map<String, String> metadata = {'metadata': 'metadata'};
  static CreditCardConfig creditCard = CreditCardConfig(
    manual: false,
    saveCard: true,
  );
  static ApplePayConfig applePay = ApplePayConfig(
    merchantId: 'merchant.ahmc.applepay',
    label: 'AHMC Apple Pay',
    manual: false,
  );
  static const String currency = 'SAR';
}
