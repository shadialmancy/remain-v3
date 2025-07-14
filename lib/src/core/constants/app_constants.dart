import 'package:logger/logger.dart';

import '../../tamara_service.dart';

class AppConstants {
  const AppConstants._();

  static const String apiBaseUrl = 'https://patientgateapi.rsys.life:551';
  static const String apiHomeCareUrl = 'https://homecareapi.rsys.life:9989';
  static const String apiRemainUrl = 'https://muneer.onlinedsmc.com';

  static const String automationWebHook =
      'https://automation.rsys.life/webhook';

  static const String refreshToken = 'refresh-token';
  static const String expiryTime = 'expiry-time';
  static const String defaultLocale = 'default-locale';
  static const String userId = 'userId';
  static const cartKey = 'cartKey';
  static const String deviceToken = 'DeviceToken';
  static const String loginApiUrl = '/api/Authorization/PatientAuthentication';
  static const String registerApiUrl = '/api/Authorization/PatientRegistration';
  static const String checkBalanceApiUrl = '/api/Authorization/PatientBalance';
  static const String getAllOffersUrl = '/api/General/GetOffers';
  static const String getAllServicesGroupUrl = '/api/ServiceGroup';
  static const String getAllServicesUrl = '/api/Service';
  static const String getAllCareGiversUrl = '/api/CareGiver';
  static const String tamaraCreateCheckoutSessionUrl =
      'https://${TamaraService.tamaraEnvoirment}.tamara.co/checkout';
  static const String getSpecialitiesUrl = '/api/Booking/Specialites';
  static const String getMapLocationUrl = '/api/General/locations/0';
  static const String getPatientInsuranceUrl =
      '/api/Authorization/PatientInsurance';
  static const String getPatientApprovalUrl =
      '/api/Authorization/PatientApprovals';
  static String getAvailabilityTimeSlotsUrl =
      '/api/Booking/DoctorsAvailability';
  static String getDoctorsUrl = '/api/Booking/Doctors';
  static String getAllPaymentsUrl = '/api/Payment/GetPatientPayments';
  static String getSickLeave = '/api/Transactions/MedicalDocument';

  static String getAllPatientBookingsUrl = '/api/Booking/GetBookings';
  static String addBookingUrl = '/api/Booking/AddBooking';
  static String cancelBookingUrl = '/api/Booking/CancelBooking';
  static String rescheduleBookingUrl = '/api/Booking/RescheduleBooking';
  static String getPatientPrescriptionUrl = '/api/Orders/PharmacyOrder';
  static String getMedicalRecordUrl = '/api/Transactions/GetAllTrans';
  static String postRechargeBalanceUrl = '/api/Payment/RechargeBalance';
  static String getCalcPaymentUrl = '/api/Payment/CalulatePayment';
  static String postPaymentUrl = '/api/Payment/PostPayment';

  static const String getTransactionByType =
      '/api/Transactions/GetSpecificTrans';

  static const String documentDownload = '/api/Transactions/DocumentsDownload';

  static const String calcAmountToPay = '/api/Transactions/GetAmount';

  /// Home Care
  static const String getHomeCarePackageBundles = '/api/PackageBundle';
  static const String getSinglePackage = '/api/Package/get-package';

  static const String getCareGiverSchedule =
      '/api/CareGiver/get-care-giver-schedule';

  static const String confirmHomeCareOrder = '/api/Booking/add-order';

  static const String getLocationsByAccountId =
      '/api/Location/get-location-By-UserAccountId';

  static const String postUserLocation = '/api/Location/add-location';

  static const String getHomecareOrdersById =
      '/api/Booking/get-order-by-userAccountId';

  static const String getPaymentsDue = '/api/Orders/Today';

  static const String getHomeServices = '/api/patient/ServiceCount';
  static const String getHomeVitalSigns = '/api/patient/Vitalsigns';
}

Logger logger = Logger(
  printer: HybridPrinter(
    PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    error: PrettyPrinter(
      methodCount: 15,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    fatal: PrettyPrinter(
      methodCount: 15,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    trace: PrettyPrinter(
      methodCount: 25,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    warning: PrettyPrinter(
      methodCount: 5,
      errorMethodCount: 5,
      lineLength: 140,
    ),
  ),
);

const saudiDefaultCode = '966';
const saudiDefaultCountry = 'SA';

const patientInfoBox = 'patientInfoBox';
const offerCartItemBox = 'offerCartItemBox';
const examinationOfferCartItemBox = 'examinationOfferCartItemBox';
