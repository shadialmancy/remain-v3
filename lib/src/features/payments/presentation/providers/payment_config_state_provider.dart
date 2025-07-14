// ignore_for_file: strict_top_level_inference, avoid_public_notifier_properties
// ignore_for_file: provider_dependencies

import 'package:moyasar/moyasar.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../constants/payment_configurations_constants.dart';
import 'payments_service.dart';
part 'payment_config_state_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [PaymentService, AuthUiService])
class PaymentConfigState extends _$PaymentConfigState {
  @override
  FutureOr<PaymentStatus> build() {
    // setPaymentConfig();
    return getPaymentStatus() ?? PaymentStatus.initiated;
  }

  PaymentConfig? _paymentConfig;
  PaymentConfig? getPaymentConfig() {
    logger.d('paymentConfig: ${_paymentConfig?.publishableApiKey}');
    return _paymentConfig;
  }

  num _totalAmount = 0.0;
  void setTotalAmount(num amount) {
    _totalAmount = amount;
  }

  void setPaymentConfig({num? totalToPay}) {
    _totalAmount = ref
            .read(paymentServiceProvider.notifier)
            .getCalculatePaymentResponseEntity()
            ?.data
            ?.total ??
        0.0;
    if (totalToPay != null) {
      _totalAmount = totalToPay.toDouble();
    }
    _totalAmount = _totalAmount * 100;
    _paymentConfig = PaymentConfig(
      publishableApiKey: AppPaymentConfigsStrings.testPublishableApiKey,
      amount: _totalAmount.toInt(),
      description:
          ref.watch(paymentServiceProvider.notifier).getPaymentDescription() ??
              '',
      // metadata: AppPaymentConfigsStrings.metadata,
      creditCard: AppPaymentConfigsStrings.creditCard,
      applePay: AppPaymentConfigsStrings.applePay,
      currency: AppPaymentConfigsStrings.currency,
    );
  }

  // Callback once the user clicks on the custom Apple Pay widget
  void onSubmitApplePay(applePay) async {
    final source = ApplePayPaymentRequestSource(
        applePay['token'], (_paymentConfig?.applePay as ApplePayConfig).manual);
    final paymentRequest = PaymentRequest(_paymentConfig!, source);

    final result = await Moyasar.pay(
      apiKey: _paymentConfig?.publishableApiKey ?? '',
      paymentRequest: paymentRequest,
    );

    onPaymentResult(result);
  }

  CardFormModel? cardFormModel;
  saveCardFormModel(CardFormModel model) {
    cardFormModel = model;
  }

  // Callback once the user fills & submit their CC information using the custom form widget
  void onSubmitCcForm() async {
    logger.i('cardFormModel: $cardFormModel');
    state = const AsyncLoading();
    final source = CardPaymentRequestSource(
      creditCardData: cardFormModel ?? CardFormModel(),
      tokenizeCard: (_paymentConfig?.creditCard as CreditCardConfig).saveCard,
      manualPayment: (_paymentConfig?.creditCard as CreditCardConfig).manual,
    );

    final paymentRequest = PaymentRequest(_paymentConfig!, source);

    final result = await Moyasar.pay(
        apiKey: _paymentConfig?.publishableApiKey ?? '',
        paymentRequest: paymentRequest);
    logger.i('result: $result');
    onPaymentResult(result);
  }

  PaymentStatus? _paymentStatus;
  PaymentStatus? getPaymentStatus() {
    return _paymentStatus;
  }

  // Unified payment result processor
  PaymentStatus onPaymentResult(result) {
    PaymentStatus status = _paymentStatus ?? PaymentStatus.initiated;
    if (result is PaymentResponse) {
      logger.d('Payment response: $result');
      switch (result.status) {
        case PaymentStatus.initiated:
          logger.d('Payment initiated');
          _paymentStatus = PaymentStatus.initiated;
          state = AsyncData(_paymentStatus ?? PaymentStatus.initiated);
          break;
        case PaymentStatus.paid:
          logger.d('Payment paid');
          _paymentStatus = PaymentStatus.paid;
          state = AsyncData(_paymentStatus ?? PaymentStatus.paid);

          break;
        case PaymentStatus.failed:
          logger.d('Payment failed');
          _paymentStatus = PaymentStatus.failed;
          state = AsyncData(_paymentStatus ?? PaymentStatus.failed);

          break;
        case PaymentStatus.authorized:
          logger.d('Payment authorized');
          _paymentStatus = PaymentStatus.authorized;
          state = AsyncData(_paymentStatus ?? PaymentStatus.authorized);

          break;
        case PaymentStatus.captured:
          logger.d('Payment captured');
          _paymentStatus = PaymentStatus.captured;
          state = AsyncData(_paymentStatus ?? PaymentStatus.captured);

          break;
      }
    } else {
      logger.d('Payment failed');
      _paymentStatus = PaymentStatus.failed;
      state = AsyncData(_paymentStatus ?? PaymentStatus.failed);
    }
    return status;
  }
}
