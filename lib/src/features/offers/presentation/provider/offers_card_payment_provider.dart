// ignore_for_file: provider_dependencies

import 'package:remain/src/core/helpers/session_manager.dart';
import 'package:remain/src/features/booking_schedules/domain/entities/list_of_booking_body/booking_datum.dart';
import 'package:remain/src/features/examination_offer/presentation/providers/examination_cart_provider.dart';
import 'package:remain/src/features/offers/presentation/provider/offer_payments_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';

import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../../../booking_schedules/domain/entities/list_of_booking_body/list_of_booking_body.dart';
import '../../../booking_schedules/domain/entities/list_of_booking_body/program_data.dart';
import '../../../payments/data/models/post_booking_payment_body.dart';
import '../../../payments/domain/repository/payments_repository.dart';
import '../../domain/entities/offer_cart_entity/offer_cart_item.dart';
import 'cart_provider.dart';

part 'offers_card_payment_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [AuthUiService, OfferPaymentsService])
class OffersCardPaymentService extends _$OffersCardPaymentService {
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

  PostBookingPaymentBody? _postBookingPaymentBody;
  PostBookingPaymentBody? getPostBookingPaymentBody() =>
      _postBookingPaymentBody;

  Future<void> setPostBookingPaymentBody() async {
    String patientId =
        ref.read(authUiServiceProvider).value?.id.toString() ?? '';
    bool isInsurance =
        ref.read(authUiServiceProvider).value?.isInsurance ?? false;
    num totalAmount =
        ref.read(offerPaymentsServiceProvider).value?.data?.total ?? 0;
    num vatAmount =
        ref.read(offerPaymentsServiceProvider).value?.data?.vat ?? 0;
    num? programId = ref
        .read(cartServiceProvider.notifier)
        .getOfferCartItemsList()
        .first
        .programId;
    num? programVerId = ref
        .read(cartServiceProvider.notifier)
        .getOfferCartItemsList()
        .first
        .programVerId;
    int locationId = await sessionManager.getChosenMedicalCenter();
    _postBookingPaymentBody = PostBookingPaymentBody(
      amount: totalAmount.toString(),
      isCash: !isInsurance,
      patientId: patientId,
      status: _paymentStatus,
      vatAmount: vatAmount.toString(),
      paymentRepId: _paymentRepId ?? '',
      programId: programId?.toString() ?? '',
      programVerId: programVerId?.toString() ?? '',
      comment: '',
      bookingId: '',
      locationID: locationId.toString(),
    );
    logger.d('PostBookingPaymentBody: $_postBookingPaymentBody');
  }

  ListOfBookingBody? _paymentBody;

  ListOfBookingBody? getPaymentBody() {
    return _paymentBody;
  }

  bool? _isDiagnosis = false;
  void setIsDiagnosis(bool isDiagnosis) {
    _isDiagnosis = isDiagnosis;
  }

  bool? getIsDiagnosis() {
    return _isDiagnosis;
  }

  String? _paymentMethod;
  void setPaymentMethod(String paymentMethod) {
    _paymentMethod = paymentMethod;
  }

  Future<void> setPaymentBody() async {
    _paymentBody = ListOfBookingBody();
    String patientId =
        ref.read(authUiServiceProvider).value?.id.toString() ?? '';
    bool isInsurance =
        ref.read(authUiServiceProvider).value?.isInsurance ?? false;
    num totalAmount =
        ref.read(offerPaymentsServiceProvider).value?.data?.total ?? 0;
    num vatAmount =
        ref.read(offerPaymentsServiceProvider).value?.data?.vat ?? 0;
    num locationId = await sessionManager.getChosenMedicalCenter();

    List<OfferCartItem> offerFinalList = [];

    var offerLst =
        ref.read(cartServiceProvider.notifier).getOfferCartItemsList();
    var examinationOfferList = ref
        .read(examinationCartServiceProvider.notifier)
        .getOfferCartItemsList();
    if (getIsDiagnosis() ?? false) {
      offerFinalList = examinationOfferList;
    } else {
      offerFinalList = offerLst;
    }
    // _paymentBody = offerFinalList
    //     .map(
    //       (e) => BookingDatum(
    //         amount: totalAmount.toString(),
    //         isCash: !isInsurance,
    //         patientId: patientId,
    //         status: _paymentStatus,
    //         vatAmount: vatAmount.toString(),
    //         paymentRepId: _paymentRepId ?? '',
    //         //  programId: e.programId.toString(),
    //         // programVerId: e.programVerId.toString(),
    //         locationId: locationId.toString(),
    //         //bookingId: '',
    //         comment: '',
    //         paymentMethod: 'card',
    //       ),
    //     )
    //     .toList();
    _paymentBody = ListOfBookingBody(
      data: BookingDatum(
        amount: totalAmount.toString(),
        isCash: !isInsurance,
        patientId: patientId,
        status: _paymentStatus,
        vatAmount: vatAmount.toString(),
        paymentRepId: _paymentRepId ?? '',
        locationId: locationId.toString(),
        comment: '',
        paymentMethod: _paymentMethod ?? 'card',
      ),
      programData: offerFinalList
          .map(
            (e) => ProgramData(
              programId: e.programId.toString(),
              programVerId: e.programVerId.toString(),
            ),
          )
          .toList(),
    );
  }

  Future<bool> savepaymentWithWebHook() async {
    try {
      await setPaymentBody();
      return await ref
          .read(paymentsRepositoryProvider.notifier)
          .savepaymentWithWebHook(listOfBookingBody: _paymentBody);
    } catch (e, stack) {
      throw CustomError('Failed to save booking with web hook',
          err: e, stackTrace: stack);
    }
  }

  // Future<bool> postBookingPayment() async {
  //   try {
  //     await setPostBookingPaymentBody();
  //     PostPaymentsResponseEntity? postPaymentsResponseEntity;
  //     if (_postBookingPaymentBody != null) {
  //       postPaymentsResponseEntity = await ref
  //           .read(paymentsRepositoryProvider.notifier)
  //           .postBookingPayment(_postBookingPaymentBody!);
  //     }
  //     return postPaymentsResponseEntity?.code == 200;
  //   } catch (e, stack) {
  //     throw CustomError('Failed to post booking payment',
  //         err: e, stackTrace: stack);
  //   }
  // }

  void reset() {
    _postBookingPaymentBody = null;
    _paymentStatus = false;
    _paymentRepId = null;
    _paymentDescription = null;
    _paymentBody = null;
    _isDiagnosis = false;
    _paymentMethod = null;
  }
}
