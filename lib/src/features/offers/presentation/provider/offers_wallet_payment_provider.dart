import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'offers_wallet_payment_provider.g.dart';

@Riverpod(keepAlive: true)
class OffersWalletPaymentService extends _$OffersWalletPaymentService {
  @override
  FutureOr<void> build() {}
  bool _paymentStatus = false;
  bool getPaymentStatus() => _paymentStatus;
  void setPaymentStatus(bool status) {
    _paymentStatus = status;
  }

  String? _paymentDescription;
  String? getPaymentDescription() {
    return _paymentDescription;
  }

  void setPaymentDescription(String? paymentDescription) {
    _paymentDescription = paymentDescription;
  }

  String? _paymentRepId;
  void setPaymentRepId(String paymentRepId) {
    _paymentRepId = paymentRepId;
  }

  String? getPaymentRepId() {
    return _paymentRepId;
  }
}
