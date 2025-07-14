import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import '../../../../../l10n/generated/l10n.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../../booking_schedules/presentation/provider/medical_center_service.dart';
import '../../../examination_offer/presentation/providers/examination_cart_provider.dart';
import '../../../offers/data/models/tamara_payment/tamara_model.dart';
import '../../../offers/domain/entities/entities.dart';
import '../../../offers/domain/entities/offer_cart_entity/offer_cart_item.dart';
import '../../../offers/domain/repositories/tamara_repository.dart';
import '../../../offers/presentation/provider/cart_provider.dart';
import '../../../offers/presentation/provider/offer_payments_service.dart';

part 'tamara_payment_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [CartService, ExaminationCartService])
class TamaraPaymentService extends _$TamaraPaymentService {
  @override
  FutureOr<TamaraCheckoutResponseEntity?> build() {
    return gettamaraCheckoutSession();
  }

  TamaraPayment setPaymentMock() {
    final patientData = ref.read(authUiServiceProvider).value;
    final totalAmount =
        ref.read(offerPaymentsServiceProvider.notifier).getTotalWithVat()?.data;
    List<OfferCartItem> orderItems = [];

    var offerLst =
        ref.read(cartServiceProvider.notifier).getOfferCartItemsList();
    var examinationOfferList = ref
        .read(examinationCartServiceProvider.notifier)
        .getOfferCartItemsList();
    if (getIsDiagnosis() ?? false) {
      orderItems = examinationOfferList;
    } else {
      orderItems = offerLst;
    }
    if (patientData == null) {
      Fluttertoast.showToast(
        msg: AppLocalizations.current.youMustLoginFirstToProceedWithThePayment,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color(0xFFE21C3D),
        textColor: Colors.white,
        fontSize: 16.0,
      );
      throw Exception('You must login first to proceed with the payment');
    }
    final mockPayload = TamaraPayment(
      totalAmount: TotalAmount(
        amount: totalAmount?.total,
        currency: 'SAR',
      ),
      shippingAmount: ShippingAmount(amount: 0, currency: 'SAR'),
      taxAmount: TaxAmount(amount: totalAmount?.vat, currency: 'SAR'),
      orderReferenceId: const Uuid().v4().split('-').first,
      items: List<Item>.from(orderItems.map((e) => Item(
          referenceId: e.code,
          sku: e.code,
          name: e.programName,
          type: e.specialtie,
          quantity: e.quantity,
          taxAmount: TaxAmount(amount: 0, currency: 'SAR'),
          unitPrice: UnitPrice(amount: e.afterDiscount, currency: 'SAR'),
          totalAmount: TotalAmount(
              amount: ((e.afterDiscount ?? 0) * e.quantity),
              currency: 'SAR')))),
      consumer: Consumer(
          email: 'customer@email.com',
          firstName: patientData.engName,
          phoneNumber: patientData.telephones),
      countryCode: 'SA',
      description:
          "Phone number: ${patientData.telephones}, Full name: ${patientData.engName},File num: ${patientData.fileNum}",
      merchantUrl: MerchantUrl(
          notification:
              "https://example-notification.com/payments/tamaranotifications",
          success: 'http://example.com/#/success',
          failure: 'http://example.com/#/fail',
          cancel: 'http://example.com/#/cancel'),
      paymentType: 'PAY_BY_INSTALMENTS',
      instalments: 3,
      shippingAddress: ShippingAddress(
        line1: patientData.address,
        city: ref.read(medicalCenterServiceProvider.notifier).currentCenter,
        countryCode: 'SA',
        firstName: patientData.engName,
        lastName: '',
      ),
      isMobile: true,
    );
    return mockPayload;
  }

  TamaraCheckoutResponseEntity? _tamaraCheckoutSession;
  TamaraCheckoutResponseEntity? gettamaraCheckoutSession() =>
      _tamaraCheckoutSession;
  Future<TamaraCheckoutResponseEntity?> startPayment() async {
    state = const AsyncValue.loading();
    final payment = setPaymentMock();
    _tamaraCheckoutSession = await ref
        .read(tamaraRepositoryProvider.notifier)
        .createCheckoutSession(payment);
    state = AsyncValue.data(_tamaraCheckoutSession);
    return _tamaraCheckoutSession;
  }

  bool? _isDiagnosis = false;
  void setIsDiagnosis(bool isDiagnosis) {
    _isDiagnosis = isDiagnosis;
  }

  bool? getIsDiagnosis() {
    return _isDiagnosis;
  }

  void clearSession() {
    _tamaraCheckoutSession = null;
    _isDiagnosis = false;

    state = const AsyncValue.data(null);
  }
}
