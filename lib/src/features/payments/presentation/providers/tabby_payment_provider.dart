import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tabby_flutter_inapp_sdk/tabby_flutter_inapp_sdk.dart';
import 'package:uuid/uuid.dart';
import '../../../../../l10n/generated/l10n.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/helpers/session_manager.dart';
import '../../../../tabby_service.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../../examination_offer/presentation/providers/examination_cart_provider.dart';
import '../../../offers/domain/entities/offer_cart_entity/offer_cart_item.dart';
import '../../../offers/presentation/provider/cart_provider.dart';
import '../../../offers/presentation/provider/offer_payments_service.dart';
part 'tabby_payment_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [CartService, ExaminationCartService])
class TabbyPaymentService extends _$TabbyPaymentService {
  @override
  FutureOr<TabbySession?> build() {
    return getSession();
  }

  Payment setPaymentMock() {
    final patientData = ref.read(authUiServiceProvider).value;
    final totalAmount = ref
        .read(offerPaymentsServiceProvider.notifier)
        .getTotalWithVat()
        ?.data
        ?.total;
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
    final mockPayload = Payment(
      amount: totalAmount.toString(),
      currency: Currency.sar,
      buyer: Buyer(
        // email: 'card.success@tabby.ai',
        // phone: patientData?.telephones ?? '+966500000000',
        // name: patientData?.engName ?? 'John Doe',
        // dob: patientData?.dob?.split('T')[0] ?? '1990-01-01',
        email: 'card.success@tabby.ai',
        phone: '+966500000001',
        name: patientData.engName ?? 'John Doe',
        dob: patientData.dob?.split('T')[0] ?? '1990-01-01',
      ),
      buyerHistory: BuyerHistory(
        loyaltyLevel: 0,
        registeredSince: DateTime.now().toUtc().toIso8601String(),
        wishlistCount: 0,
        isEmailVerified: true,
        isPhoneNumberVerified: true,
        isSocialNetworksConnected: true,
      ),
      shippingAddress: ShippingAddress(
        city: 'Riyadh',
        address: patientData.address ?? 'string',
        zip: '11662',
      ),
      order: Order(
        referenceId: const Uuid().v4().split('-').first,
        items: List<OrderItem>.from(
          orderItems.map(
            (e) => OrderItem(
              quantity: e.quantity,
              unitPrice: e.afterDiscount.toString(),
              title: e.programName ?? '',
              category: e.specialtie ?? '',
              referenceId: e.code ?? '',
            ),
          ),
        ),
      ),
      orderHistory: List<OrderHistoryItem>.from(
        orderItems.map(
          (e) => OrderHistoryItem(
            amount: e.afterDiscount.toString(),
            status: OrderHistoryItemStatus.newOne,
            items: List<OrderItem>.from(
              orderItems.map(
                (e) => OrderItem(
                  quantity: e.quantity,
                  unitPrice: e.afterDiscount.toString(),
                  title: e.programName ?? '',
                  category: e.specialtie ?? '',
                  referenceId: e.code ?? '',
                ),
              ),
            ),
            purchasedAt: DateTime.now().toUtc().toIso8601String(),
            paymentMethod: OrderHistoryItemPaymentMethod.card,
          ),
        ),
      ),
    );
    return mockPayload;
  }

  bool? _isDiagnosis = false;
  void setIsDiagnosis(bool isDiagnosis) {
    _isDiagnosis = isDiagnosis;
  }

  bool? getIsDiagnosis() {
    return _isDiagnosis;
  }

  TabbySession? _session;
  TabbySession? getSession() => _session;
  Future<TabbySession?> startPayment() async {
    state = const AsyncValue.loading();
    final payment = setPaymentMock();
    String lang = await sessionManager.getLocale();
    _session = await TabbySDK().createSession(
      TabbyCheckoutPayload(
        merchantCode: TabbyService.tabbyMerchantCode,
        lang: lang == AppStrings.ar.toLowerCase() ? Lang.ar : Lang.en,
        payment: payment,
      ),
    );
    state = AsyncValue.data(_session);
    return _session;
  }

  void clearSession() {
    _session = null;
    _isDiagnosis = false;

    state = const AsyncValue.data(null);
  }
}
