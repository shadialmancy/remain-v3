import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @en.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get en;

  /// No description provided for @ar.
  ///
  /// In en, this message translates to:
  /// **'عربي'**
  String get ar;

  /// No description provided for @alert.
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get alert;

  /// No description provided for @doUWantToExitTheApp.
  ///
  /// In en, this message translates to:
  /// **'Do you want to exit the app?'**
  String get doUWantToExitTheApp;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resend;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @didntReceiveTheVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive the verification code?'**
  String get didntReceiveTheVerificationCode;

  /// No description provided for @easiestWayToBookBestDoctors.
  ///
  /// In en, this message translates to:
  /// **'The easiest way to book an appointment with the best doctors'**
  String get easiestWayToBookBestDoctors;

  /// No description provided for @urMedicineInUrHands.
  ///
  /// In en, this message translates to:
  /// **'Your medicine is in your hands at any time'**
  String get urMedicineInUrHands;

  /// No description provided for @allUrMedicalNeedsInOnePlace.
  ///
  /// In en, this message translates to:
  /// **'All your medical needs in one place'**
  String get allUrMedicalNeedsInOnePlace;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @createAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get createAnAccount;

  /// No description provided for @toLoginWritePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'To log in to your account, please enter the number correctly and a one-time activation code will be sent via SMS.'**
  String get toLoginWritePhoneNumber;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number'**
  String get enterPhoneNumber;

  /// No description provided for @pleaseEnterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter phone number'**
  String get pleaseEnterPhoneNumber;

  /// No description provided for @pleaseEnterNationalID.
  ///
  /// In en, this message translates to:
  /// **'Please enter national ID'**
  String get pleaseEnterNationalID;

  /// No description provided for @pleaseEnterFullName.
  ///
  /// In en, this message translates to:
  /// **'Please enter full name'**
  String get pleaseEnterFullName;

  /// No description provided for @pleaseEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'please enter email'**
  String get pleaseEnterEmail;

  /// No description provided for @pleaseEnterCity.
  ///
  /// In en, this message translates to:
  /// **'please enter city'**
  String get pleaseEnterCity;

  /// No description provided for @pleaseEnterDistrict.
  ///
  /// In en, this message translates to:
  /// **'please enter district'**
  String get pleaseEnterDistrict;

  /// No description provided for @nationalID.
  ///
  /// In en, this message translates to:
  /// **'National ID'**
  String get nationalID;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @onboardingText1.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Remain Medical Complex App! We are committed to providing excellent healthcare and easy access to follow up on your medical appointments and tests with ease.'**
  String get onboardingText1;

  /// No description provided for @onboardingText2.
  ///
  /// In en, this message translates to:
  /// **'Enjoy a wide range of comprehensive medical services, from skin consultations, to ordering your medications, to getting home care, and benefit from direct medical consultations at any time.'**
  String get onboardingText2;

  /// No description provided for @enterNationalID.
  ///
  /// In en, this message translates to:
  /// **'Enter national ID'**
  String get enterNationalID;

  /// No description provided for @enterYourMedicalFileNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your medical file number'**
  String get enterYourMedicalFileNumber;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @registerAccount.
  ///
  /// In en, this message translates to:
  /// **'Register here'**
  String get registerAccount;

  /// No description provided for @verifCode.
  ///
  /// In en, this message translates to:
  /// **'Verification Number'**
  String get verifCode;

  /// No description provided for @enterTheAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount'**
  String get enterTheAmount;

  /// No description provided for @quickSelection.
  ///
  /// In en, this message translates to:
  /// **'Quick Selection'**
  String get quickSelection;

  /// No description provided for @continueTxt.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueTxt;

  /// No description provided for @enterYourCardDetails.
  ///
  /// In en, this message translates to:
  /// **'Enter your card details'**
  String get enterYourCardDetails;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get paymentMethod;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter full name'**
  String get enterFullName;

  /// No description provided for @addCard.
  ///
  /// In en, this message translates to:
  /// **'Add card'**
  String get addCard;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @addCreditCard.
  ///
  /// In en, this message translates to:
  /// **'Add credit card'**
  String get addCreditCard;

  /// No description provided for @cardholderName.
  ///
  /// In en, this message translates to:
  /// **'Cardholder Name'**
  String get cardholderName;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card number'**
  String get cardNumber;

  /// No description provided for @walletHasBeenSuccessfullyCharged.
  ///
  /// In en, this message translates to:
  /// **'Wallet has been successfully charged.'**
  String get walletHasBeenSuccessfullyCharged;

  /// No description provided for @expirationDate.
  ///
  /// In en, this message translates to:
  /// **'expiration date'**
  String get expirationDate;

  /// No description provided for @verificationCodeCVV.
  ///
  /// In en, this message translates to:
  /// **'CVV verification code'**
  String get verificationCodeCVV;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get backToHome;

  /// No description provided for @emptyValidationError.
  ///
  /// In en, this message translates to:
  /// **'cannot be empty'**
  String get emptyValidationError;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter email'**
  String get enterEmail;

  /// No description provided for @enterDateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Enter date of birth'**
  String get enterDateOfBirth;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @condition.
  ///
  /// In en, this message translates to:
  /// **'conditions'**
  String get condition;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @enterFirstName.
  ///
  /// In en, this message translates to:
  /// **'Enter First Name'**
  String get enterFirstName;

  /// No description provided for @fatherName.
  ///
  /// In en, this message translates to:
  /// **'Father Name'**
  String get fatherName;

  /// No description provided for @enterFatherName.
  ///
  /// In en, this message translates to:
  /// **'Enter Father Name'**
  String get enterFatherName;

  /// No description provided for @grandFatherName.
  ///
  /// In en, this message translates to:
  /// **'Grand Father Name'**
  String get grandFatherName;

  /// No description provided for @enterGrandFatherName.
  ///
  /// In en, this message translates to:
  /// **'Enter Grand Father Name'**
  String get enterGrandFatherName;

  /// No description provided for @familyName.
  ///
  /// In en, this message translates to:
  /// **'Family Name'**
  String get familyName;

  /// No description provided for @enterFamilyName.
  ///
  /// In en, this message translates to:
  /// **'Enter Family Name'**
  String get enterFamilyName;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @enterYourCity.
  ///
  /// In en, this message translates to:
  /// **'Enter your City'**
  String get enterYourCity;

  /// No description provided for @district.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get district;

  /// No description provided for @enterYourDistrict.
  ///
  /// In en, this message translates to:
  /// **'Enter your District'**
  String get enterYourDistrict;

  /// No description provided for @nextOfKinName.
  ///
  /// In en, this message translates to:
  /// **'Next of Kin Name'**
  String get nextOfKinName;

  /// No description provided for @enterNextOfKinName.
  ///
  /// In en, this message translates to:
  /// **'Enter Next of Kin Name'**
  String get enterNextOfKinName;

  /// No description provided for @nextOfKinPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Next of Kin Phone Number'**
  String get nextOfKinPhoneNumber;

  /// No description provided for @enterNextOfKinPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Next of Kin Phone Number'**
  String get enterNextOfKinPhoneNumber;

  /// No description provided for @nextOfKinRelationId.
  ///
  /// In en, this message translates to:
  /// **'Next of Kin Relation ID'**
  String get nextOfKinRelationId;

  /// No description provided for @enterNextOfKinRelationId.
  ///
  /// In en, this message translates to:
  /// **'Enter Next of Kin Relation ID'**
  String get enterNextOfKinRelationId;

  /// No description provided for @religionId.
  ///
  /// In en, this message translates to:
  /// **'Religion ID'**
  String get religionId;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @selectYourDateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Select your date of birth'**
  String get selectYourDateOfBirth;

  /// No description provided for @pleaseSelectYourDateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Please select your date of birth'**
  String get pleaseSelectYourDateOfBirth;

  /// Home page label
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @bookAppointment.
  ///
  /// In en, this message translates to:
  /// **'Book Appointment'**
  String get bookAppointment;

  /// No description provided for @appointmentsRecords.
  ///
  /// In en, this message translates to:
  /// **'Appointments Records'**
  String get appointmentsRecords;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @medicalRecord.
  ///
  /// In en, this message translates to:
  /// **'Medical Record'**
  String get medicalRecord;

  /// No description provided for @testResults.
  ///
  /// In en, this message translates to:
  /// **'Test Results'**
  String get testResults;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @kg.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get kg;

  /// No description provided for @cm.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get cm;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @insuranceNumber.
  ///
  /// In en, this message translates to:
  /// **'Insurance number'**
  String get insuranceNumber;

  /// No description provided for @totalBalance.
  ///
  /// In en, this message translates to:
  /// **'Total balance'**
  String get totalBalance;

  /// No description provided for @sr.
  ///
  /// In en, this message translates to:
  /// **'SR'**
  String get sr;

  /// No description provided for @walletRecharge.
  ///
  /// In en, this message translates to:
  /// **'Wallet recharge'**
  String get walletRecharge;

  /// No description provided for @previousOperations.
  ///
  /// In en, this message translates to:
  /// **'Previous operations'**
  String get previousOperations;

  /// No description provided for @showAll.
  ///
  /// In en, this message translates to:
  /// **'Show all'**
  String get showAll;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dateOfBirth;

  /// No description provided for @changeApplicationLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Application Language'**
  String get changeApplicationLanguage;

  /// No description provided for @center.
  ///
  /// In en, this message translates to:
  /// **'Center'**
  String get center;

  /// No description provided for @enterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'enter a valid email'**
  String get enterValidEmail;

  /// No description provided for @medicalCenterJaddah.
  ///
  /// In en, this message translates to:
  /// **'Remain Medical Complex - Jeddah'**
  String get medicalCenterJaddah;

  /// No description provided for @medicalCenterRawdah.
  ///
  /// In en, this message translates to:
  /// **'Remain Medical Complex - Rawdah'**
  String get medicalCenterRawdah;

  /// No description provided for @medicalCenterQortobah.
  ///
  /// In en, this message translates to:
  /// **'Remain Medical Complex - Qortobah'**
  String get medicalCenterQortobah;

  /// No description provided for @searchForSpecialty.
  ///
  /// In en, this message translates to:
  /// **'Search for Specialty'**
  String get searchForSpecialty;

  /// No description provided for @ourServices.
  ///
  /// In en, this message translates to:
  /// **'Our Services'**
  String get ourServices;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @enterYouDataCorrectly.
  ///
  /// In en, this message translates to:
  /// **'Enter your data correctly so that we can reach you accurately'**
  String get enterYouDataCorrectly;

  /// No description provided for @skinCare.
  ///
  /// In en, this message translates to:
  /// **'Skin Care'**
  String get skinCare;

  /// No description provided for @healthTrack.
  ///
  /// In en, this message translates to:
  /// **'Health Track'**
  String get healthTrack;

  /// No description provided for @homeCare.
  ///
  /// In en, this message translates to:
  /// **'Home Care'**
  String get homeCare;

  /// No description provided for @pharmacy.
  ///
  /// In en, this message translates to:
  /// **'Pharmacy'**
  String get pharmacy;

  /// No description provided for @diagnosis.
  ///
  /// In en, this message translates to:
  /// **'Diagnosis'**
  String get diagnosis;

  /// No description provided for @medicalConsultation.
  ///
  /// In en, this message translates to:
  /// **'Medical Consultation'**
  String get medicalConsultation;

  /// No description provided for @makeSureFromUrHealth.
  ///
  /// In en, this message translates to:
  /// **'Ensure your safety and health through ongoing health assessment'**
  String get makeSureFromUrHealth;

  /// No description provided for @reservations.
  ///
  /// In en, this message translates to:
  /// **'Reservations'**
  String get reservations;

  /// No description provided for @bookAnAppointment.
  ///
  /// In en, this message translates to:
  /// **'Book an Appointment'**
  String get bookAnAppointment;

  /// No description provided for @thereAreNoPreviousTransactions.
  ///
  /// In en, this message translates to:
  /// **'There are no previous transactions.'**
  String get thereAreNoPreviousTransactions;

  /// No description provided for @searchForAnyOperation.
  ///
  /// In en, this message translates to:
  /// **'Search for any operation'**
  String get searchForAnyOperation;

  /// No description provided for @currently.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get currently;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get canceled;

  /// No description provided for @thereAreNoCurrentAppointments.
  ///
  /// In en, this message translates to:
  /// **'There are no current appointments'**
  String get thereAreNoCurrentAppointments;

  /// No description provided for @thereAreNoPreviousAppointments.
  ///
  /// In en, this message translates to:
  /// **'There are no previous appointments'**
  String get thereAreNoPreviousAppointments;

  /// No description provided for @thereAreNoCanceledAppointments.
  ///
  /// In en, this message translates to:
  /// **'There are no canceled appointments'**
  String get thereAreNoCanceledAppointments;

  /// No description provided for @changeReservation.
  ///
  /// In en, this message translates to:
  /// **'Change reservation'**
  String get changeReservation;

  /// No description provided for @cancelReservation.
  ///
  /// In en, this message translates to:
  /// **'Cancel reservation'**
  String get cancelReservation;

  /// No description provided for @reservationDetails.
  ///
  /// In en, this message translates to:
  /// **'Reservation details'**
  String get reservationDetails;

  /// No description provided for @rebook.
  ///
  /// In en, this message translates to:
  /// **'Rebook'**
  String get rebook;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @youCanBookAnotherAppointment.
  ///
  /// In en, this message translates to:
  /// **'You can book another appointment'**
  String get youCanBookAnotherAppointment;

  /// No description provided for @theReservationHasBeenCancelledSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The reservation has been cancelled successfully'**
  String get theReservationHasBeenCancelledSuccessfully;

  /// No description provided for @newReservation.
  ///
  /// In en, this message translates to:
  /// **'New reservation'**
  String get newReservation;

  /// No description provided for @youCanModifyTheAppointmentInsteadOfCancelingIt.
  ///
  /// In en, this message translates to:
  /// **'You can change the appointment instead of canceling it'**
  String get youCanModifyTheAppointmentInsteadOfCancelingIt;

  /// No description provided for @recordStatements.
  ///
  /// In en, this message translates to:
  /// **'Record statements'**
  String get recordStatements;

  /// No description provided for @vaccinationsAndMedications.
  ///
  /// In en, this message translates to:
  /// **'Vaccinations and medications'**
  String get vaccinationsAndMedications;

  /// No description provided for @insurance.
  ///
  /// In en, this message translates to:
  /// **'Insurances'**
  String get insurance;

  /// No description provided for @sickLeave.
  ///
  /// In en, this message translates to:
  /// **'Sick Leaves'**
  String get sickLeave;

  /// No description provided for @familyAndRelatives.
  ///
  /// In en, this message translates to:
  /// **'Family and relatives'**
  String get familyAndRelatives;

  /// No description provided for @searchYourMedicalRecord.
  ///
  /// In en, this message translates to:
  /// **'Search your medical record'**
  String get searchYourMedicalRecord;

  /// No description provided for @failedToCalculatePayment.
  ///
  /// In en, this message translates to:
  /// **'Failed to calculate payment'**
  String get failedToCalculatePayment;

  /// No description provided for @proceedToPayment.
  ///
  /// In en, this message translates to:
  /// **'Proceed to payment'**
  String get proceedToPayment;

  /// No description provided for @youHaveSuccessfullyRechargedYourWallet.
  ///
  /// In en, this message translates to:
  /// **'You have successfully recharged your wallet'**
  String get youHaveSuccessfullyRechargedYourWallet;

  /// No description provided for @failedToRechargeTheBalance.
  ///
  /// In en, this message translates to:
  /// **'Failed to recharge the balance'**
  String get failedToRechargeTheBalance;

  /// No description provided for @noteThat.
  ///
  /// In en, this message translates to:
  /// **'Note That'**
  String get noteThat;

  /// No description provided for @yourSubtotalChargeIs.
  ///
  /// In en, this message translates to:
  /// **'Your subtotal charge is'**
  String get yourSubtotalChargeIs;

  /// No description provided for @withVATCostOf.
  ///
  /// In en, this message translates to:
  /// **'with a VAT cost of'**
  String get withVATCostOf;

  /// No description provided for @forTotalOf.
  ///
  /// In en, this message translates to:
  /// **'for a total of'**
  String get forTotalOf;

  /// No description provided for @subTotal.
  ///
  /// In en, this message translates to:
  /// **'SubTotal'**
  String get subTotal;

  /// No description provided for @vat.
  ///
  /// In en, this message translates to:
  /// **'VAT'**
  String get vat;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @doctorMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get doctorMale;

  /// No description provided for @doctorFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get doctorFemale;

  /// No description provided for @availableTime.
  ///
  /// In en, this message translates to:
  /// **'Available Time'**
  String get availableTime;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @nextWeek.
  ///
  /// In en, this message translates to:
  /// **'Next Week'**
  String get nextWeek;

  /// No description provided for @virtualClinic.
  ///
  /// In en, this message translates to:
  /// **'Virtual Clinic'**
  String get virtualClinic;

  /// No description provided for @onlineTime.
  ///
  /// In en, this message translates to:
  /// **'Online Time'**
  String get onlineTime;

  /// No description provided for @timeInClinic.
  ///
  /// In en, this message translates to:
  /// **'Time in Clinic'**
  String get timeInClinic;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @doctorData.
  ///
  /// In en, this message translates to:
  /// **'Doctor Data'**
  String get doctorData;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @patients.
  ///
  /// In en, this message translates to:
  /// **'Patients'**
  String get patients;

  /// No description provided for @aboutDoctor.
  ///
  /// In en, this message translates to:
  /// **'About Doctor'**
  String get aboutDoctor;

  /// No description provided for @workTime.
  ///
  /// In en, this message translates to:
  /// **'Work Time'**
  String get workTime;

  /// No description provided for @consultationPrice.
  ///
  /// In en, this message translates to:
  /// **'Consultation Price'**
  String get consultationPrice;

  /// No description provided for @sar.
  ///
  /// In en, this message translates to:
  /// **'SAR'**
  String get sar;

  /// No description provided for @chooseDate.
  ///
  /// In en, this message translates to:
  /// **'Choose Date'**
  String get chooseDate;

  /// No description provided for @chooseYourSuitableDate.
  ///
  /// In en, this message translates to:
  /// **'Choose your suitable date'**
  String get chooseYourSuitableDate;

  /// No description provided for @chooseTime.
  ///
  /// In en, this message translates to:
  /// **'Choose Time'**
  String get chooseTime;

  /// No description provided for @confirmReservationInformation.
  ///
  /// In en, this message translates to:
  /// **'Confirm Reservation Information'**
  String get confirmReservationInformation;

  /// No description provided for @bookingDetails.
  ///
  /// In en, this message translates to:
  /// **'Booking Details'**
  String get bookingDetails;

  /// No description provided for @payVia.
  ///
  /// In en, this message translates to:
  /// **'Pay Via'**
  String get payVia;

  /// No description provided for @depiteCard.
  ///
  /// In en, this message translates to:
  /// **'Debit Card'**
  String get depiteCard;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @thankYouForBookingWithUs.
  ///
  /// In en, this message translates to:
  /// **'Thank you for booking with us'**
  String get thankYouForBookingWithUs;

  /// No description provided for @yourBookingHasBeenConfirmedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your booking has been confirmed successfully'**
  String get yourBookingHasBeenConfirmedSuccessfully;

  /// No description provided for @youHaveBookedAnAppointmentWith.
  ///
  /// In en, this message translates to:
  /// **'You have booked an appointment with'**
  String get youHaveBookedAnAppointmentWith;

  /// No description provided for @modifyBookingTime.
  ///
  /// In en, this message translates to:
  /// **'Modify Booking Time'**
  String get modifyBookingTime;

  /// No description provided for @fileMedicalNumber.
  ///
  /// In en, this message translates to:
  /// **'File medical number'**
  String get fileMedicalNumber;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read More'**
  String get readMore;

  /// No description provided for @readLess.
  ///
  /// In en, this message translates to:
  /// **'Read Less'**
  String get readLess;

  /// No description provided for @patient.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get patient;

  /// No description provided for @years.
  ///
  /// In en, this message translates to:
  /// **'Years'**
  String get years;

  /// No description provided for @selectAnAppointment.
  ///
  /// In en, this message translates to:
  /// **'Select an Appointment'**
  String get selectAnAppointment;

  /// No description provided for @sarWithoutS.
  ///
  /// In en, this message translates to:
  /// **'SAR'**
  String get sarWithoutS;

  /// No description provided for @continuing.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuing;

  /// No description provided for @continuing2.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuing2;

  /// No description provided for @analysis.
  ///
  /// In en, this message translates to:
  /// **'Analysis'**
  String get analysis;

  /// No description provided for @rays.
  ///
  /// In en, this message translates to:
  /// **'Rays'**
  String get rays;

  /// No description provided for @analysisResult.
  ///
  /// In en, this message translates to:
  /// **'Analysis result'**
  String get analysisResult;

  /// No description provided for @indicators.
  ///
  /// In en, this message translates to:
  /// **'Indicators'**
  String get indicators;

  /// No description provided for @measurementsValues.
  ///
  /// In en, this message translates to:
  /// **'Measurements values'**
  String get measurementsValues;

  /// No description provided for @result.
  ///
  /// In en, this message translates to:
  /// **'Result'**
  String get result;

  /// No description provided for @downloadTestResult.
  ///
  /// In en, this message translates to:
  /// **'Download the test result'**
  String get downloadTestResult;

  /// No description provided for @vaccinations.
  ///
  /// In en, this message translates to:
  /// **'Vaccinations'**
  String get vaccinations;

  /// No description provided for @medications.
  ///
  /// In en, this message translates to:
  /// **'Medications'**
  String get medications;

  /// No description provided for @nameOfMedicine.
  ///
  /// In en, this message translates to:
  /// **'Name of the medicine'**
  String get nameOfMedicine;

  /// No description provided for @dosage.
  ///
  /// In en, this message translates to:
  /// **'Dosage'**
  String get dosage;

  /// No description provided for @downloadTreatmentPlan.
  ///
  /// In en, this message translates to:
  /// **'Download the treatment plan'**
  String get downloadTreatmentPlan;

  /// No description provided for @insuranceCompanyName.
  ///
  /// In en, this message translates to:
  /// **'Insurance company name'**
  String get insuranceCompanyName;

  /// No description provided for @insuranceApprovals.
  ///
  /// In en, this message translates to:
  /// **'Insurance Approvals'**
  String get insuranceApprovals;

  /// No description provided for @yourInsuranceInformation.
  ///
  /// In en, this message translates to:
  /// **'Your insurance information'**
  String get yourInsuranceInformation;

  /// No description provided for @insuranceCompany.
  ///
  /// In en, this message translates to:
  /// **'Insurance company'**
  String get insuranceCompany;

  /// No description provided for @chooseYourInsuranceCompany.
  ///
  /// In en, this message translates to:
  /// **'Choose your insurance company'**
  String get chooseYourInsuranceCompany;

  /// No description provided for @enterYourInsuranceNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your insurance number'**
  String get enterYourInsuranceNumber;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry date'**
  String get expiryDate;

  /// No description provided for @selectTheExpiryDateWrittenOnYourInsuranceCard.
  ///
  /// In en, this message translates to:
  /// **'Select the expiry date written on your insurance card.'**
  String get selectTheExpiryDateWrittenOnYourInsuranceCard;

  /// No description provided for @insuranceCardImage.
  ///
  /// In en, this message translates to:
  /// **'Insurance card image'**
  String get insuranceCardImage;

  /// No description provided for @uploadPictureOfYourInsuranceCardFromHere.
  ///
  /// In en, this message translates to:
  /// **'Upload a picture of your insurance card from here'**
  String get uploadPictureOfYourInsuranceCardFromHere;

  /// No description provided for @serviceEndsIn.
  ///
  /// In en, this message translates to:
  /// **'The service ends in'**
  String get serviceEndsIn;

  /// No description provided for @itHasBeenApproved.
  ///
  /// In en, this message translates to:
  /// **'It has been approved'**
  String get itHasBeenApproved;

  /// No description provided for @underReview.
  ///
  /// In en, this message translates to:
  /// **'Under review'**
  String get underReview;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @addFamilyMember.
  ///
  /// In en, this message translates to:
  /// **'Add a family member'**
  String get addFamilyMember;

  /// No description provided for @addNewMember.
  ///
  /// In en, this message translates to:
  /// **'Add a new member'**
  String get addNewMember;

  /// No description provided for @selectGender.
  ///
  /// In en, this message translates to:
  /// **'Select the gender'**
  String get selectGender;

  /// No description provided for @medicalHistory.
  ///
  /// In en, this message translates to:
  /// **'Medical history'**
  String get medicalHistory;

  /// No description provided for @hasThisPersonEverBeenDiagnosedWithDisease.
  ///
  /// In en, this message translates to:
  /// **'Has this person ever been diagnosed with a disease?'**
  String get hasThisPersonEverBeenDiagnosedWithDisease;

  /// No description provided for @addDisease.
  ///
  /// In en, this message translates to:
  /// **'Add disease'**
  String get addDisease;

  /// No description provided for @diseaseName.
  ///
  /// In en, this message translates to:
  /// **'Disease name'**
  String get diseaseName;

  /// No description provided for @writeNameOfDisease.
  ///
  /// In en, this message translates to:
  /// **'Write the name of the disease'**
  String get writeNameOfDisease;

  /// No description provided for @yearsOfInjury.
  ///
  /// In en, this message translates to:
  /// **'Years of injury'**
  String get yearsOfInjury;

  /// No description provided for @selectYearsOfInjury.
  ///
  /// In en, this message translates to:
  /// **'Select the years of injury'**
  String get selectYearsOfInjury;

  /// No description provided for @pleaseSelectYearsOfInjury.
  ///
  /// In en, this message translates to:
  /// **'Please select the years of injury'**
  String get pleaseSelectYearsOfInjury;

  /// No description provided for @pleaseEnterDiseaseName.
  ///
  /// In en, this message translates to:
  /// **'please enter disease name'**
  String get pleaseEnterDiseaseName;

  /// No description provided for @fileIsOpening.
  ///
  /// In en, this message translates to:
  /// **'File is opening'**
  String get fileIsOpening;

  /// No description provided for @pdfPreview.
  ///
  /// In en, this message translates to:
  /// **'PDF Preview'**
  String get pdfPreview;

  /// No description provided for @downloadFile.
  ///
  /// In en, this message translates to:
  /// **'Download File'**
  String get downloadFile;

  /// No description provided for @fileIsDownloading.
  ///
  /// In en, this message translates to:
  /// **'File is downloading'**
  String get fileIsDownloading;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @accepted.
  ///
  /// In en, this message translates to:
  /// **'Accepted'**
  String get accepted;

  /// No description provided for @underProgress.
  ///
  /// In en, this message translates to:
  /// **'Under Progress'**
  String get underProgress;

  /// No description provided for @medicalFileNumber.
  ///
  /// In en, this message translates to:
  /// **'Medical file number'**
  String get medicalFileNumber;

  /// No description provided for @testResultAdvice.
  ///
  /// In en, this message translates to:
  /// **'Increased erythrocyte sedimentation rate. This may be an indication of infection. We advise you to consult a doctor.'**
  String get testResultAdvice;

  /// No description provided for @invalidOtp.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP'**
  String get invalidOtp;

  /// No description provided for @theMaximumQuantityIsFive.
  ///
  /// In en, this message translates to:
  /// **'The maximum quantity is 5'**
  String get theMaximumQuantityIsFive;

  /// No description provided for @theItemHasBeenAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The item has been added successfully'**
  String get theItemHasBeenAddedSuccessfully;

  /// No description provided for @thisItemIsAlreadyInTheCart.
  ///
  /// In en, this message translates to:
  /// **'This item is already in the cart'**
  String get thisItemIsAlreadyInTheCart;

  /// No description provided for @theItemHasBeenRemoved.
  ///
  /// In en, this message translates to:
  /// **'The item has been removed'**
  String get theItemHasBeenRemoved;

  /// No description provided for @chooseMedicalCenter.
  ///
  /// In en, this message translates to:
  /// **'Choose Medical Center'**
  String get chooseMedicalCenter;

  /// No description provided for @noTimeAvailableInThisDay.
  ///
  /// In en, this message translates to:
  /// **'No time available in this day'**
  String get noTimeAvailableInThisDay;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @failedToCancelReservation.
  ///
  /// In en, this message translates to:
  /// **'Failed to cancel reservation'**
  String get failedToCancelReservation;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get payNow;

  /// No description provided for @rescheduleTheAppointment.
  ///
  /// In en, this message translates to:
  /// **'Reschedule the appointment'**
  String get rescheduleTheAppointment;

  /// No description provided for @thereIsNoRecordStatementData.
  ///
  /// In en, this message translates to:
  /// **'There is no record statement data'**
  String get thereIsNoRecordStatementData;

  /// No description provided for @thereIsNoLabResultData.
  ///
  /// In en, this message translates to:
  /// **'There is no lab result data'**
  String get thereIsNoLabResultData;

  /// No description provided for @thereIsNoRayResultData.
  ///
  /// In en, this message translates to:
  /// **'There is no ray result data'**
  String get thereIsNoRayResultData;

  /// No description provided for @thereIsNoPrescriptionData.
  ///
  /// In en, this message translates to:
  /// **'There is no prescription data'**
  String get thereIsNoPrescriptionData;

  /// No description provided for @thereIsNoOfferData.
  ///
  /// In en, this message translates to:
  /// **'There is no offer data'**
  String get thereIsNoOfferData;

  /// No description provided for @yourBookingHasBeenRescheduledSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your booking has been rescheduled successfully'**
  String get yourBookingHasBeenRescheduledSuccessfully;

  /// No description provided for @failedToRescheduleReservation.
  ///
  /// In en, this message translates to:
  /// **'Failed to reschedule reservation'**
  String get failedToRescheduleReservation;

  /// No description provided for @paymentIsDoneSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Payment is done successfully'**
  String get paymentIsDoneSuccessfully;

  /// No description provided for @paymentFailed.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get paymentFailed;

  /// No description provided for @paymentIsDoneButFailedToSaveTheTransaction.
  ///
  /// In en, this message translates to:
  /// **'Payment is done but failed to save the transaction'**
  String get paymentIsDoneButFailedToSaveTheTransaction;

  /// No description provided for @theCartIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'The cart is empty'**
  String get theCartIsEmpty;

  /// No description provided for @youMustLoginFirstToProceedWithThePayment.
  ///
  /// In en, this message translates to:
  /// **'You must login first to proceed with the payment'**
  String get youMustLoginFirstToProceedWithThePayment;

  /// No description provided for @isPaid.
  ///
  /// In en, this message translates to:
  /// **'Is Paid'**
  String get isPaid;

  /// No description provided for @paymentForOffersOrder.
  ///
  /// In en, this message translates to:
  /// **'Payment for offers order'**
  String get paymentForOffersOrder;

  /// No description provided for @congratulationsYourPaymentWithTabbyHasBeenConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Congratulations! Your payment with Tabby has been confirmed'**
  String get congratulationsYourPaymentWithTabbyHasBeenConfirmed;

  /// No description provided for @yourPaymentIsRejected.
  ///
  /// In en, this message translates to:
  /// **'Your payment is rejected'**
  String get yourPaymentIsRejected;

  /// No description provided for @congratulationsYourPaymentWithTamaraHasBeenConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Congratulations! Your payment with Tamara has been confirmed'**
  String get congratulationsYourPaymentWithTamaraHasBeenConfirmed;

  /// No description provided for @youHaveToLoginFirstInOrderToAddThisItemInYourCart.
  ///
  /// In en, this message translates to:
  /// **'You have to login first to add this item in your cart'**
  String get youHaveToLoginFirstInOrderToAddThisItemInYourCart;

  /// No description provided for @youArentAuthorizedToAccessThisPage.
  ///
  /// In en, this message translates to:
  /// **'You aren\'t authorized to access this page'**
  String get youArentAuthorizedToAccessThisPage;

  /// No description provided for @noDataAvailableNow.
  ///
  /// In en, this message translates to:
  /// **'No data available now'**
  String get noDataAvailableNow;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @failedToPay.
  ///
  /// In en, this message translates to:
  /// **'Failed to pay'**
  String get failedToPay;

  /// No description provided for @serviceNotAvailableYetComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Service not available yet, coming soon'**
  String get serviceNotAvailableYetComingSoon;

  /// No description provided for @pleaseLoginFirstToBookAnAppointment.
  ///
  /// In en, this message translates to:
  /// **'Please login first to book an appointment'**
  String get pleaseLoginFirstToBookAnAppointment;

  /// No description provided for @appointmentBookingWithDr.
  ///
  /// In en, this message translates to:
  /// **'Appointment booking with Dr.'**
  String get appointmentBookingWithDr;

  /// No description provided for @sar2.
  ///
  /// In en, this message translates to:
  /// **'SAR'**
  String get sar2;

  /// No description provided for @offers.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offers;

  /// No description provided for @viewTheOffer.
  ///
  /// In en, this message translates to:
  /// **'View the offer'**
  String get viewTheOffer;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @featuresOfTheOffer.
  ///
  /// In en, this message translates to:
  /// **'Features of the offer'**
  String get featuresOfTheOffer;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get addToCart;

  /// No description provided for @shoppingCart.
  ///
  /// In en, this message translates to:
  /// **'Shopping cart'**
  String get shoppingCart;

  /// No description provided for @receiptPrice.
  ///
  /// In en, this message translates to:
  /// **'Receipt price'**
  String get receiptPrice;

  /// No description provided for @totalPrice.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get totalPrice;

  /// No description provided for @confirmTheOrder.
  ///
  /// In en, this message translates to:
  /// **'Confirm the order'**
  String get confirmTheOrder;

  /// No description provided for @performTheOrder.
  ///
  /// In en, this message translates to:
  /// **'Perform the order'**
  String get performTheOrder;

  /// No description provided for @tabby.
  ///
  /// In en, this message translates to:
  /// **'Tabby'**
  String get tabby;

  /// No description provided for @tamara.
  ///
  /// In en, this message translates to:
  /// **'Tamara'**
  String get tamara;

  /// No description provided for @dermatologyAndBeauty.
  ///
  /// In en, this message translates to:
  /// **'Dermatology and Beauty'**
  String get dermatologyAndBeauty;

  /// No description provided for @medicalInsurance.
  ///
  /// In en, this message translates to:
  /// **'Medical Insurance'**
  String get medicalInsurance;

  /// No description provided for @laboratoryAndxRayResults.
  ///
  /// In en, this message translates to:
  /// **'Laboratory and X-Ray Results'**
  String get laboratoryAndxRayResults;

  /// No description provided for @homeDoctorsVisit.
  ///
  /// In en, this message translates to:
  /// **'Home Doctor\'s Visit'**
  String get homeDoctorsVisit;

  /// No description provided for @homeAnalysisService.
  ///
  /// In en, this message translates to:
  /// **'Home Analysis Service'**
  String get homeAnalysisService;

  /// No description provided for @homePhysicalTherapy.
  ///
  /// In en, this message translates to:
  /// **'Home Physical Therapy'**
  String get homePhysicalTherapy;

  /// No description provided for @theService.
  ///
  /// In en, this message translates to:
  /// **'The service'**
  String get theService;

  /// No description provided for @prescriptionImage.
  ///
  /// In en, this message translates to:
  /// **'Prescription Image'**
  String get prescriptionImage;

  /// No description provided for @uploadYourPrescriptionImageHere.
  ///
  /// In en, this message translates to:
  /// **'Upload your prescription image here'**
  String get uploadYourPrescriptionImageHere;

  /// No description provided for @uploadedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Uploaded successfully'**
  String get uploadedSuccessfully;

  /// No description provided for @enterYourLocation.
  ///
  /// In en, this message translates to:
  /// **'Enter your location'**
  String get enterYourLocation;

  /// No description provided for @patientAddress.
  ///
  /// In en, this message translates to:
  /// **'Patient Address'**
  String get patientAddress;

  /// No description provided for @visitPrice.
  ///
  /// In en, this message translates to:
  /// **'Visit price'**
  String get visitPrice;

  /// No description provided for @patientData.
  ///
  /// In en, this message translates to:
  /// **'Patient data'**
  String get patientData;

  /// No description provided for @myBills.
  ///
  /// In en, this message translates to:
  /// **'My Bills'**
  String get myBills;

  /// No description provided for @downloadTheBill.
  ///
  /// In en, this message translates to:
  /// **'Download the bill'**
  String get downloadTheBill;

  /// No description provided for @drSaeedForSkinCareAndDermatology.
  ///
  /// In en, this message translates to:
  /// **'Dr. Saeed for Skin Care and Dermatology'**
  String get drSaeedForSkinCareAndDermatology;

  /// No description provided for @examinations.
  ///
  /// In en, this message translates to:
  /// **'Examinations'**
  String get examinations;

  /// No description provided for @searchForExaminations.
  ///
  /// In en, this message translates to:
  /// **'Search for examinations'**
  String get searchForExaminations;

  /// No description provided for @importantExaminations.
  ///
  /// In en, this message translates to:
  /// **'Important examinations'**
  String get importantExaminations;

  /// No description provided for @examinationDetails.
  ///
  /// In en, this message translates to:
  /// **'Examination details'**
  String get examinationDetails;

  /// No description provided for @aboutExaminations.
  ///
  /// In en, this message translates to:
  /// **'About Examination'**
  String get aboutExaminations;

  /// No description provided for @examinationResults.
  ///
  /// In en, this message translates to:
  /// **'Examination Results'**
  String get examinationResults;

  /// No description provided for @youNeedtoSelectMedicalCenterFirstInOrderToViewTheAvailableData.
  ///
  /// In en, this message translates to:
  /// **'You need to select medical center first in order to view the available data'**
  String get youNeedtoSelectMedicalCenterFirstInOrderToViewTheAvailableData;

  /// No description provided for @reportingResults.
  ///
  /// In en, this message translates to:
  /// **'Reporting results'**
  String get reportingResults;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon'**
  String get comingSoon;

  /// No description provided for @offerDetails.
  ///
  /// In en, this message translates to:
  /// **'Offer Details'**
  String get offerDetails;

  /// No description provided for @homeCareBundle.
  ///
  /// In en, this message translates to:
  /// **'Home Care Bundle'**
  String get homeCareBundle;

  /// No description provided for @searchForBundle.
  ///
  /// In en, this message translates to:
  /// **'Search for bundle'**
  String get searchForBundle;

  /// No description provided for @importantBundles.
  ///
  /// In en, this message translates to:
  /// **'Important Bundles'**
  String get importantBundles;

  /// No description provided for @selectService.
  ///
  /// In en, this message translates to:
  /// **'Select service'**
  String get selectService;

  /// No description provided for @noServicesFound.
  ///
  /// In en, this message translates to:
  /// **'No services found'**
  String get noServicesFound;

  /// No description provided for @noCareGiversAvailable.
  ///
  /// In en, this message translates to:
  /// **'No care givers available'**
  String get noCareGiversAvailable;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @careGivers.
  ///
  /// In en, this message translates to:
  /// **'Care Givers'**
  String get careGivers;

  /// No description provided for @noTimeSlotsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No time slots available'**
  String get noTimeSlotsAvailable;

  /// No description provided for @pleaseSelectTimeSlotFirst.
  ///
  /// In en, this message translates to:
  /// **'Please select time slot first'**
  String get pleaseSelectTimeSlotFirst;

  /// No description provided for @importantServices.
  ///
  /// In en, this message translates to:
  /// **'Important Services'**
  String get importantServices;

  /// No description provided for @getTheBestDealsOnMedicalServices.
  ///
  /// In en, this message translates to:
  /// **'Get the best deals on medical services'**
  String get getTheBestDealsOnMedicalServices;

  /// No description provided for @browseTheOffers.
  ///
  /// In en, this message translates to:
  /// **'Browse offers'**
  String get browseTheOffers;

  /// No description provided for @youHaveAMedicalQuestion.
  ///
  /// In en, this message translates to:
  /// **'You have a medical question?'**
  String get youHaveAMedicalQuestion;

  /// No description provided for @consultASpecialistWithin24Hours.
  ///
  /// In en, this message translates to:
  /// **'Consult a specialist within 24 hours'**
  String get consultASpecialistWithin24Hours;

  /// No description provided for @askNow.
  ///
  /// In en, this message translates to:
  /// **'Ask Now'**
  String get askNow;

  /// No description provided for @myAppointments.
  ///
  /// In en, this message translates to:
  /// **'My Appointments'**
  String get myAppointments;

  /// No description provided for @youNeedToLoginFirst.
  ///
  /// In en, this message translates to:
  /// **'You need to login first'**
  String get youNeedToLoginFirst;

  /// No description provided for @yourOrderHasBeenConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Your order has been confirmed'**
  String get yourOrderHasBeenConfirmed;

  /// No description provided for @failedToConfirmTheOrder.
  ///
  /// In en, this message translates to:
  /// **'Failed to confirm the order'**
  String get failedToConfirmTheOrder;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @laboratoryAndRadiologyResults.
  ///
  /// In en, this message translates to:
  /// **'Laboratory and Radiology Results'**
  String get laboratoryAndRadiologyResults;

  /// No description provided for @radiology.
  ///
  /// In en, this message translates to:
  /// **'Radiology'**
  String get radiology;

  /// No description provided for @laboratory.
  ///
  /// In en, this message translates to:
  /// **'Laboratory'**
  String get laboratory;

  /// No description provided for @getTheBestHomeMedicalPackages.
  ///
  /// In en, this message translates to:
  /// **'Get the best home medical packages'**
  String get getTheBestHomeMedicalPackages;

  /// No description provided for @browsePackages.
  ///
  /// In en, this message translates to:
  /// **'Browse packages'**
  String get browsePackages;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @requestSubmittedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Request submitted successfully'**
  String get requestSubmittedSuccessfully;

  /// No description provided for @yourRequestIsNowBeingProcessed.
  ///
  /// In en, this message translates to:
  /// **'Your request is now being processed'**
  String get yourRequestIsNowBeingProcessed;

  /// No description provided for @continueBrowsing.
  ///
  /// In en, this message translates to:
  /// **'Continue browsing'**
  String get continueBrowsing;

  /// No description provided for @returnToHome.
  ///
  /// In en, this message translates to:
  /// **'Return to home'**
  String get returnToHome;

  /// No description provided for @thisServiceIsNotAvailableYet.
  ///
  /// In en, this message translates to:
  /// **'This service is not available yet'**
  String get thisServiceIsNotAvailableYet;

  /// No description provided for @laboratoryResults.
  ///
  /// In en, this message translates to:
  /// **'Laboratory Results'**
  String get laboratoryResults;

  /// No description provided for @selectThePatient.
  ///
  /// In en, this message translates to:
  /// **'Select the patient'**
  String get selectThePatient;

  /// No description provided for @goToMyAppointments.
  ///
  /// In en, this message translates to:
  /// **'Go to my appointments'**
  String get goToMyAppointments;

  /// No description provided for @visit.
  ///
  /// In en, this message translates to:
  /// **'Visit'**
  String get visit;

  /// No description provided for @booking.
  ///
  /// In en, this message translates to:
  /// **'Booking'**
  String get booking;

  /// No description provided for @sickLeaves.
  ///
  /// In en, this message translates to:
  /// **'Sick Leaves'**
  String get sickLeaves;

  /// No description provided for @rays2.
  ///
  /// In en, this message translates to:
  /// **'Rays'**
  String get rays2;

  /// No description provided for @anaylses2.
  ///
  /// In en, this message translates to:
  /// **'Analyses'**
  String get anaylses2;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @customerService.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService;

  /// No description provided for @instantConsultationWithLifeCare.
  ///
  /// In en, this message translates to:
  /// **'Instant Consultation with LifeCare'**
  String get instantConsultationWithLifeCare;

  /// No description provided for @youCanConsultASpecialistDoctorViaVideoThroughLifeCareFeature.
  ///
  /// In en, this message translates to:
  /// **'You can consult a specialist doctor via video through the Live Care feature'**
  String get youCanConsultASpecialistDoctorViaVideoThroughLifeCareFeature;

  /// No description provided for @xrayResults.
  ///
  /// In en, this message translates to:
  /// **'X-Ray Results'**
  String get xrayResults;

  /// No description provided for @analysisResults.
  ///
  /// In en, this message translates to:
  /// **'Analysis Results'**
  String get analysisResults;

  /// No description provided for @medicalReports.
  ///
  /// In en, this message translates to:
  /// **'Medical Reports'**
  String get medicalReports;

  /// No description provided for @appleWatch.
  ///
  /// In en, this message translates to:
  /// **'Apple Watch'**
  String get appleWatch;

  /// No description provided for @ourLocations.
  ///
  /// In en, this message translates to:
  /// **'Our Locations'**
  String get ourLocations;

  /// No description provided for @upcomingAppointments.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Appointments'**
  String get upcomingAppointments;

  /// No description provided for @paymentsDue.
  ///
  /// In en, this message translates to:
  /// **'Payments Due'**
  String get paymentsDue;

  /// No description provided for @viewAll2.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll2;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @paymentPolicy.
  ///
  /// In en, this message translates to:
  /// **'Payment Policy'**
  String get paymentPolicy;

  /// No description provided for @intellectualPropertyRightsPolicy.
  ///
  /// In en, this message translates to:
  /// **'Intellectual Property Rights Policy'**
  String get intellectualPropertyRightsPolicy;

  /// No description provided for @termsAndConditionsOfUseOfThePlatform.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions of Use of the Platform'**
  String get termsAndConditionsOfUseOfThePlatform;

  /// No description provided for @contactUsViaWhatsApp.
  ///
  /// In en, this message translates to:
  /// **'Contact Us via WhatsApp'**
  String get contactUsViaWhatsApp;

  /// No description provided for @family.
  ///
  /// In en, this message translates to:
  /// **'Family'**
  String get family;

  /// No description provided for @book.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get book;

  /// No description provided for @bookings.
  ///
  /// In en, this message translates to:
  /// **'Bookings'**
  String get bookings;

  /// No description provided for @previousPayments.
  ///
  /// In en, this message translates to:
  /// **'Previous Payments'**
  String get previousPayments;

  /// No description provided for @payments.
  ///
  /// In en, this message translates to:
  /// **'Payments'**
  String get payments;

  /// No description provided for @patientName.
  ///
  /// In en, this message translates to:
  /// **'Patient Name'**
  String get patientName;

  /// No description provided for @doctorName.
  ///
  /// In en, this message translates to:
  /// **'Doctor Name'**
  String get doctorName;

  /// No description provided for @serviceType.
  ///
  /// In en, this message translates to:
  /// **'Service Type'**
  String get serviceType;

  /// No description provided for @servicePrice.
  ///
  /// In en, this message translates to:
  /// **'Service Price'**
  String get servicePrice;

  /// No description provided for @bookingDate.
  ///
  /// In en, this message translates to:
  /// **'Booking Date'**
  String get bookingDate;

  /// No description provided for @saudi.
  ///
  /// In en, this message translates to:
  /// **'Saudi'**
  String get saudi;

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// No description provided for @foreigner.
  ///
  /// In en, this message translates to:
  /// **'Foreigner'**
  String get foreigner;

  /// No description provided for @serviceSummary.
  ///
  /// In en, this message translates to:
  /// **'Service Summary'**
  String get serviceSummary;

  /// No description provided for @soon.
  ///
  /// In en, this message translates to:
  /// **'Soon'**
  String get soon;

  /// No description provided for @noPaymentsDueAtTheMoment.
  ///
  /// In en, this message translates to:
  /// **'No payments due at the moment'**
  String get noPaymentsDueAtTheMoment;

  /// No description provided for @goToSettings.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings'**
  String get goToSettings;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @locationPermissionIsRequiredToShowDirections.
  ///
  /// In en, this message translates to:
  /// **'Location permission is required to show directions. Please allow location access and try again.'**
  String get locationPermissionIsRequiredToShowDirections;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
