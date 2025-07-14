// ignore_for_file: avoid_public_notifier_properties
import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../../offers/data/models/offers_dto/offers_data.dart';
import '../../../offers/domain/entities/offer_cart_entity/offer_cart_item.dart';
import '../../../offers/presentation/provider/offer_payments_service.dart';
part 'examination_cart_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: <Object>[])
class ExaminationCartService extends _$ExaminationCartService {
  @override
  FutureOr<List<OfferCartItem>> build() async {
    _paymentMethod = 0;
    state = const AsyncValue.loading();

    await Hive.openBox(examinationOfferCartItemBox);
    bool exists = Hive.isBoxOpen(examinationOfferCartItemBox);
    if (exists) {
      var cartItemBox = Hive.box(examinationOfferCartItemBox);
      if (cartItemBox.isNotEmpty) {
        final cartItems = cartItemBox.getAt(0) as List;
        _offerCartItemsList = cartItems.cast<OfferCartItem>().toList();
        final offerPaymentService =
            ref.read(offerPaymentsServiceProvider.notifier);
        sumTotalAmount();
        offerPaymentService.calcPaymentWithVat(totalAmount: totalAmount);
      }
    }
    sumTotalAmount();
    sumOfNumOfItemsCart();

    state = AsyncData(_offerCartItemsList);

    return _offerCartItemsList;
  }

  double subtotal = 0;
  double taxes = 0;
  double deliveryCharge = 0;
  double totalAmount = 0;
  int numOfItems = 0;
  List<OfferCartItem> _offerCartItemsList = [];
  List<OfferCartItem> getOfferCartItemsList() {
    return _offerCartItemsList;
  }

  void incrementQuantity(int index) {
    final quantity = _offerCartItemsList[index].quantity + 1;
    _offerCartItemsList[index] =
        _offerCartItemsList[index].copyWith(quantity: quantity);
  }

  Future<void> saveCartInLocal() async {
    await Hive.openBox(examinationOfferCartItemBox);
    var cartItemBox = Hive.box(examinationOfferCartItemBox);
    cartItemBox.put(AppConstants.cartKey, _offerCartItemsList);
    if (_offerCartItemsList.isEmpty) {
      cartItemBox.close();
    }
  }

  void decrementQuantity(OfferCartItem cartItem) {
    int index = _offerCartItemsList.indexOf(cartItem);
    final quantity = _offerCartItemsList[index].quantity - 1;
    _offerCartItemsList[index] =
        _offerCartItemsList[index].copyWith(quantity: quantity);
    if (_offerCartItemsList[index].quantity == 0) {
      removeFromCart(index);
    }
    saveCartInLocal();

    state = AsyncData(_offerCartItemsList);
  }

  void removeFromCart(int index) {
    _offerCartItemsList.removeAt(index);
    saveCartInLocal();
    sumOfNumOfItemsCart();
    sumTotalAmount();
  }

  int? checkAddedToCart(OfferCartItem cartItem) {
    if (_offerCartItemsList.contains(cartItem) == true) {
      int index = _offerCartItemsList.indexOf(cartItem);
      return _offerCartItemsList[index].quantity;
    }
    return 0;
  }

  void addToCart(OfferCartItem cartItem) {
    cartItem = cartItem.copyWith(purchaseDate: DateTime.now());
    state = const AsyncValue.loading();
    cartItem = cartItem.copyWith(quantity: 1);
    _offerCartItemsList.add(cartItem);
    saveCartInLocal();

    state = AsyncValue.data(_offerCartItemsList);
  }

  void sumOfNumOfItemsCart() {
    numOfItems = 0;
    for (OfferCartItem element in _offerCartItemsList) {
      numOfItems = numOfItems + element.quantity;
    }
  }

  void sumSubTotal() {
    subtotal = 0;
    for (OfferCartItem element in _offerCartItemsList) {
      subtotal = subtotal + ((element.afterDiscount ?? 0) * element.quantity);
    }
    state = AsyncValue.data(_offerCartItemsList);
  }

  double sumTotalAmount() {
    sumSubTotal();
    totalAmount = subtotal + deliveryCharge + taxes;
    log(totalAmount.toString());
    // await calcPaymentWithVat();
    return totalAmount;
  }

  int? _paymentMethod = 0;
  int? getPamentMethod() {
    logger.d(_paymentMethod);
    return _paymentMethod;
  }

  OfferCartItem castingOfferDataToOfferCartItem(OfferData? data) {
    return OfferCartItem(
        purchaseDate: DateTime.now(),
        afterDiscount: data?.afterDiscount,
        beforeDiscount: data?.beforeDiscount,
        code: data?.code,
        discountRate: data?.discountRate,
        locations: data?.locations,
        locationsId: data?.locationsId,
        programArbName: data?.programArbName,
        programId: data?.programId,
        programImage: data?.programImage,
        programName: data?.programName,
        programVerId: data?.programVerId,
        quantity: 0,
        specialtie: data?.specialtie,
        specialtieId: data?.specialtieId);
  }

  void setPaymentMethod(int? paymentMethod) {
    _paymentMethod = paymentMethod;
  }

  Future<void> clearCart() async {
    _offerCartItemsList.clear();
    numOfItems = 0;
    setPaymentMethod(0);
    await saveCartInLocal();
    state = AsyncValue.data(_offerCartItemsList);
  }
}
