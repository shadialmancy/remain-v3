// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get en {
    return Intl.message(
      'English',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `عربي`
  String get ar {
    return Intl.message(
      'عربي',
      name: 'ar',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert {
    return Intl.message(
      'Alert',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to exit the app?`
  String get doUWantToExitTheApp {
    return Intl.message(
      'Do you want to exit the app?',
      name: 'doUWantToExitTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the verification code?`
  String get didntReceiveTheVerificationCode {
    return Intl.message(
      'Didn\'t receive the verification code?',
      name: 'didntReceiveTheVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `The easiest way to book an appointment with the best doctors`
  String get easiestWayToBookBestDoctors {
    return Intl.message(
      'The easiest way to book an appointment with the best doctors',
      name: 'easiestWayToBookBestDoctors',
      desc: '',
      args: [],
    );
  }

  /// `Your medicine is in your hands at any time`
  String get urMedicineInUrHands {
    return Intl.message(
      'Your medicine is in your hands at any time',
      name: 'urMedicineInUrHands',
      desc: '',
      args: [],
    );
  }

  /// `All your medical needs in one place`
  String get allUrMedicalNeedsInOnePlace {
    return Intl.message(
      'All your medical needs in one place',
      name: 'allUrMedicalNeedsInOnePlace',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get createAnAccount {
    return Intl.message(
      'Create an account',
      name: 'createAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `To log in to your account, please enter the number correctly and a one-time activation code will be sent via SMS.`
  String get toLoginWritePhoneNumber {
    return Intl.message(
      'To log in to your account, please enter the number correctly and a one-time activation code will be sent via SMS.',
      name: 'toLoginWritePhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter phone number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter phone number`
  String get pleaseEnterPhoneNumber {
    return Intl.message(
      'Please enter phone number',
      name: 'pleaseEnterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter national ID`
  String get pleaseEnterNationalID {
    return Intl.message(
      'Please enter national ID',
      name: 'pleaseEnterNationalID',
      desc: '',
      args: [],
    );
  }

  /// `Please enter full name`
  String get pleaseEnterFullName {
    return Intl.message(
      'Please enter full name',
      name: 'pleaseEnterFullName',
      desc: '',
      args: [],
    );
  }

  /// `please enter email`
  String get pleaseEnterEmail {
    return Intl.message(
      'please enter email',
      name: 'pleaseEnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `please enter city`
  String get pleaseEnterCity {
    return Intl.message(
      'please enter city',
      name: 'pleaseEnterCity',
      desc: '',
      args: [],
    );
  }

  /// `please enter district`
  String get pleaseEnterDistrict {
    return Intl.message(
      'please enter district',
      name: 'pleaseEnterDistrict',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get nationalID {
    return Intl.message(
      'National ID',
      name: 'nationalID',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Remain Medical Complex App! We are committed to providing excellent healthcare and easy access to follow up on your medical appointments and tests with ease.`
  String get onboardingText1 {
    return Intl.message(
      'Welcome to Remain Medical Complex App! We are committed to providing excellent healthcare and easy access to follow up on your medical appointments and tests with ease.',
      name: 'onboardingText1',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy a wide range of comprehensive medical services, from skin consultations, to ordering your medications, to getting home care, and benefit from direct medical consultations at any time.`
  String get onboardingText2 {
    return Intl.message(
      'Enjoy a wide range of comprehensive medical services, from skin consultations, to ordering your medications, to getting home care, and benefit from direct medical consultations at any time.',
      name: 'onboardingText2',
      desc: '',
      args: [],
    );
  }

  /// `Enter national ID`
  String get enterNationalID {
    return Intl.message(
      'Enter national ID',
      name: 'enterNationalID',
      desc: '',
      args: [],
    );
  }

  /// `Enter your medical file number`
  String get enterYourMedicalFileNumber {
    return Intl.message(
      'Enter your medical file number',
      name: 'enterYourMedicalFileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register here`
  String get registerAccount {
    return Intl.message(
      'Register here',
      name: 'registerAccount',
      desc: '',
      args: [],
    );
  }

  /// `Verification Number`
  String get verifCode {
    return Intl.message(
      'Verification Number',
      name: 'verifCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter the amount`
  String get enterTheAmount {
    return Intl.message(
      'Enter the amount',
      name: 'enterTheAmount',
      desc: '',
      args: [],
    );
  }

  /// `Quick Selection`
  String get quickSelection {
    return Intl.message(
      'Quick Selection',
      name: 'quickSelection',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueTxt {
    return Intl.message(
      'Continue',
      name: 'continueTxt',
      desc: '',
      args: [],
    );
  }

  /// `Enter your card details`
  String get enterYourCardDetails {
    return Intl.message(
      'Enter your card details',
      name: 'enterYourCardDetails',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get paymentMethod {
    return Intl.message(
      'Payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Enter full name`
  String get enterFullName {
    return Intl.message(
      'Enter full name',
      name: 'enterFullName',
      desc: '',
      args: [],
    );
  }

  /// `Add card`
  String get addCard {
    return Intl.message(
      'Add card',
      name: 'addCard',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Add credit card`
  String get addCreditCard {
    return Intl.message(
      'Add credit card',
      name: 'addCreditCard',
      desc: '',
      args: [],
    );
  }

  /// `Cardholder Name`
  String get cardholderName {
    return Intl.message(
      'Cardholder Name',
      name: 'cardholderName',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get cardNumber {
    return Intl.message(
      'Card number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Wallet has been successfully charged.`
  String get walletHasBeenSuccessfullyCharged {
    return Intl.message(
      'Wallet has been successfully charged.',
      name: 'walletHasBeenSuccessfullyCharged',
      desc: '',
      args: [],
    );
  }

  /// `expiration date`
  String get expirationDate {
    return Intl.message(
      'expiration date',
      name: 'expirationDate',
      desc: '',
      args: [],
    );
  }

  /// `CVV verification code`
  String get verificationCodeCVV {
    return Intl.message(
      'CVV verification code',
      name: 'verificationCodeCVV',
      desc: '',
      args: [],
    );
  }

  /// `Back to Home`
  String get backToHome {
    return Intl.message(
      'Back to Home',
      name: 'backToHome',
      desc: '',
      args: [],
    );
  }

  /// `cannot be empty`
  String get emptyValidationError {
    return Intl.message(
      'cannot be empty',
      name: 'emptyValidationError',
      desc: '',
      args: [],
    );
  }

  /// `Enter email`
  String get enterEmail {
    return Intl.message(
      'Enter email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter date of birth`
  String get enterDateOfBirth {
    return Intl.message(
      'Enter date of birth',
      name: 'enterDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `conditions`
  String get condition {
    return Intl.message(
      'conditions',
      name: 'condition',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Enter First Name`
  String get enterFirstName {
    return Intl.message(
      'Enter First Name',
      name: 'enterFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Father Name`
  String get fatherName {
    return Intl.message(
      'Father Name',
      name: 'fatherName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Father Name`
  String get enterFatherName {
    return Intl.message(
      'Enter Father Name',
      name: 'enterFatherName',
      desc: '',
      args: [],
    );
  }

  /// `Grand Father Name`
  String get grandFatherName {
    return Intl.message(
      'Grand Father Name',
      name: 'grandFatherName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Grand Father Name`
  String get enterGrandFatherName {
    return Intl.message(
      'Enter Grand Father Name',
      name: 'enterGrandFatherName',
      desc: '',
      args: [],
    );
  }

  /// `Family Name`
  String get familyName {
    return Intl.message(
      'Family Name',
      name: 'familyName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Family Name`
  String get enterFamilyName {
    return Intl.message(
      'Enter Family Name',
      name: 'enterFamilyName',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Enter your City`
  String get enterYourCity {
    return Intl.message(
      'Enter your City',
      name: 'enterYourCity',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Enter your District`
  String get enterYourDistrict {
    return Intl.message(
      'Enter your District',
      name: 'enterYourDistrict',
      desc: '',
      args: [],
    );
  }

  /// `Next of Kin Name`
  String get nextOfKinName {
    return Intl.message(
      'Next of Kin Name',
      name: 'nextOfKinName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Next of Kin Name`
  String get enterNextOfKinName {
    return Intl.message(
      'Enter Next of Kin Name',
      name: 'enterNextOfKinName',
      desc: '',
      args: [],
    );
  }

  /// `Next of Kin Phone Number`
  String get nextOfKinPhoneNumber {
    return Intl.message(
      'Next of Kin Phone Number',
      name: 'nextOfKinPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter Next of Kin Phone Number`
  String get enterNextOfKinPhoneNumber {
    return Intl.message(
      'Enter Next of Kin Phone Number',
      name: 'enterNextOfKinPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Next of Kin Relation ID`
  String get nextOfKinRelationId {
    return Intl.message(
      'Next of Kin Relation ID',
      name: 'nextOfKinRelationId',
      desc: '',
      args: [],
    );
  }

  /// `Enter Next of Kin Relation ID`
  String get enterNextOfKinRelationId {
    return Intl.message(
      'Enter Next of Kin Relation ID',
      name: 'enterNextOfKinRelationId',
      desc: '',
      args: [],
    );
  }

  /// `Religion ID`
  String get religionId {
    return Intl.message(
      'Religion ID',
      name: 'religionId',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Select your date of birth`
  String get selectYourDateOfBirth {
    return Intl.message(
      'Select your date of birth',
      name: 'selectYourDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Please select your date of birth`
  String get pleaseSelectYourDateOfBirth {
    return Intl.message(
      'Please select your date of birth',
      name: 'pleaseSelectYourDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'Home page label',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Book Appointment`
  String get bookAppointment {
    return Intl.message(
      'Book Appointment',
      name: 'bookAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Appointments Records`
  String get appointmentsRecords {
    return Intl.message(
      'Appointments Records',
      name: 'appointmentsRecords',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message(
      'Weight',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get height {
    return Intl.message(
      'Height',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Medical Record`
  String get medicalRecord {
    return Intl.message(
      'Medical Record',
      name: 'medicalRecord',
      desc: '',
      args: [],
    );
  }

  /// `Test Results`
  String get testResults {
    return Intl.message(
      'Test Results',
      name: 'testResults',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `kg`
  String get kg {
    return Intl.message(
      'kg',
      name: 'kg',
      desc: '',
      args: [],
    );
  }

  /// `cm`
  String get cm {
    return Intl.message(
      'cm',
      name: 'cm',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Insurance number`
  String get insuranceNumber {
    return Intl.message(
      'Insurance number',
      name: 'insuranceNumber',
      desc: '',
      args: [],
    );
  }

  /// `Total balance`
  String get totalBalance {
    return Intl.message(
      'Total balance',
      name: 'totalBalance',
      desc: '',
      args: [],
    );
  }

  /// `SR`
  String get sr {
    return Intl.message(
      'SR',
      name: 'sr',
      desc: '',
      args: [],
    );
  }

  /// `Wallet recharge`
  String get walletRecharge {
    return Intl.message(
      'Wallet recharge',
      name: 'walletRecharge',
      desc: '',
      args: [],
    );
  }

  /// `Previous operations`
  String get previousOperations {
    return Intl.message(
      'Previous operations',
      name: 'previousOperations',
      desc: '',
      args: [],
    );
  }

  /// `Show all`
  String get showAll {
    return Intl.message(
      'Show all',
      name: 'showAll',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of Birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Change Application Language`
  String get changeApplicationLanguage {
    return Intl.message(
      'Change Application Language',
      name: 'changeApplicationLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Center`
  String get center {
    return Intl.message(
      'Center',
      name: 'center',
      desc: '',
      args: [],
    );
  }

  /// `enter a valid email`
  String get enterValidEmail {
    return Intl.message(
      'enter a valid email',
      name: 'enterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Remain Medical Complex - Jeddah`
  String get medicalCenterJaddah {
    return Intl.message(
      'Remain Medical Complex - Jeddah',
      name: 'medicalCenterJaddah',
      desc: '',
      args: [],
    );
  }

  /// `Remain Medical Complex - Rawdah`
  String get medicalCenterRawdah {
    return Intl.message(
      'Remain Medical Complex - Rawdah',
      name: 'medicalCenterRawdah',
      desc: '',
      args: [],
    );
  }

  /// `Remain Medical Complex - Qortobah`
  String get medicalCenterQortobah {
    return Intl.message(
      'Remain Medical Complex - Qortobah',
      name: 'medicalCenterQortobah',
      desc: '',
      args: [],
    );
  }

  /// `Search for Specialty`
  String get searchForSpecialty {
    return Intl.message(
      'Search for Specialty',
      name: 'searchForSpecialty',
      desc: '',
      args: [],
    );
  }

  /// `Our Services`
  String get ourServices {
    return Intl.message(
      'Our Services',
      name: 'ourServices',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `Enter your data correctly so that we can reach you accurately`
  String get enterYouDataCorrectly {
    return Intl.message(
      'Enter your data correctly so that we can reach you accurately',
      name: 'enterYouDataCorrectly',
      desc: '',
      args: [],
    );
  }

  /// `Skin Care`
  String get skinCare {
    return Intl.message(
      'Skin Care',
      name: 'skinCare',
      desc: '',
      args: [],
    );
  }

  /// `Health Track`
  String get healthTrack {
    return Intl.message(
      'Health Track',
      name: 'healthTrack',
      desc: '',
      args: [],
    );
  }

  /// `Home Care`
  String get homeCare {
    return Intl.message(
      'Home Care',
      name: 'homeCare',
      desc: '',
      args: [],
    );
  }

  /// `Pharmacy`
  String get pharmacy {
    return Intl.message(
      'Pharmacy',
      name: 'pharmacy',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis`
  String get diagnosis {
    return Intl.message(
      'Diagnosis',
      name: 'diagnosis',
      desc: '',
      args: [],
    );
  }

  /// `Medical Consultation`
  String get medicalConsultation {
    return Intl.message(
      'Medical Consultation',
      name: 'medicalConsultation',
      desc: '',
      args: [],
    );
  }

  /// `Ensure your safety and health through ongoing health assessment`
  String get makeSureFromUrHealth {
    return Intl.message(
      'Ensure your safety and health through ongoing health assessment',
      name: 'makeSureFromUrHealth',
      desc: '',
      args: [],
    );
  }

  /// `Reservations`
  String get reservations {
    return Intl.message(
      'Reservations',
      name: 'reservations',
      desc: '',
      args: [],
    );
  }

  /// `Book an Appointment`
  String get bookAnAppointment {
    return Intl.message(
      'Book an Appointment',
      name: 'bookAnAppointment',
      desc: '',
      args: [],
    );
  }

  /// `There are no previous transactions.`
  String get thereAreNoPreviousTransactions {
    return Intl.message(
      'There are no previous transactions.',
      name: 'thereAreNoPreviousTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Search for any operation`
  String get searchForAnyOperation {
    return Intl.message(
      'Search for any operation',
      name: 'searchForAnyOperation',
      desc: '',
      args: [],
    );
  }

  /// `Current`
  String get currently {
    return Intl.message(
      'Current',
      name: 'currently',
      desc: '',
      args: [],
    );
  }

  /// `Previous`
  String get previous {
    return Intl.message(
      'Previous',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `There are no current appointments`
  String get thereAreNoCurrentAppointments {
    return Intl.message(
      'There are no current appointments',
      name: 'thereAreNoCurrentAppointments',
      desc: '',
      args: [],
    );
  }

  /// `There are no previous appointments`
  String get thereAreNoPreviousAppointments {
    return Intl.message(
      'There are no previous appointments',
      name: 'thereAreNoPreviousAppointments',
      desc: '',
      args: [],
    );
  }

  /// `There are no canceled appointments`
  String get thereAreNoCanceledAppointments {
    return Intl.message(
      'There are no canceled appointments',
      name: 'thereAreNoCanceledAppointments',
      desc: '',
      args: [],
    );
  }

  /// `Change reservation`
  String get changeReservation {
    return Intl.message(
      'Change reservation',
      name: 'changeReservation',
      desc: '',
      args: [],
    );
  }

  /// `Cancel reservation`
  String get cancelReservation {
    return Intl.message(
      'Cancel reservation',
      name: 'cancelReservation',
      desc: '',
      args: [],
    );
  }

  /// `Reservation details`
  String get reservationDetails {
    return Intl.message(
      'Reservation details',
      name: 'reservationDetails',
      desc: '',
      args: [],
    );
  }

  /// `Rebook`
  String get rebook {
    return Intl.message(
      'Rebook',
      name: 'rebook',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `You can book another appointment`
  String get youCanBookAnotherAppointment {
    return Intl.message(
      'You can book another appointment',
      name: 'youCanBookAnotherAppointment',
      desc: '',
      args: [],
    );
  }

  /// `The reservation has been cancelled successfully`
  String get theReservationHasBeenCancelledSuccessfully {
    return Intl.message(
      'The reservation has been cancelled successfully',
      name: 'theReservationHasBeenCancelledSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `New reservation`
  String get newReservation {
    return Intl.message(
      'New reservation',
      name: 'newReservation',
      desc: '',
      args: [],
    );
  }

  /// `You can change the appointment instead of canceling it`
  String get youCanModifyTheAppointmentInsteadOfCancelingIt {
    return Intl.message(
      'You can change the appointment instead of canceling it',
      name: 'youCanModifyTheAppointmentInsteadOfCancelingIt',
      desc: '',
      args: [],
    );
  }

  /// `Record statements`
  String get recordStatements {
    return Intl.message(
      'Record statements',
      name: 'recordStatements',
      desc: '',
      args: [],
    );
  }

  /// `Vaccinations and medications`
  String get vaccinationsAndMedications {
    return Intl.message(
      'Vaccinations and medications',
      name: 'vaccinationsAndMedications',
      desc: '',
      args: [],
    );
  }

  /// `Insurances`
  String get insurance {
    return Intl.message(
      'Insurances',
      name: 'insurance',
      desc: '',
      args: [],
    );
  }

  /// `Sick Leaves`
  String get sickLeave {
    return Intl.message(
      'Sick Leaves',
      name: 'sickLeave',
      desc: '',
      args: [],
    );
  }

  /// `Family and relatives`
  String get familyAndRelatives {
    return Intl.message(
      'Family and relatives',
      name: 'familyAndRelatives',
      desc: '',
      args: [],
    );
  }

  /// `Search your medical record`
  String get searchYourMedicalRecord {
    return Intl.message(
      'Search your medical record',
      name: 'searchYourMedicalRecord',
      desc: '',
      args: [],
    );
  }

  /// `Failed to calculate payment`
  String get failedToCalculatePayment {
    return Intl.message(
      'Failed to calculate payment',
      name: 'failedToCalculatePayment',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to payment`
  String get proceedToPayment {
    return Intl.message(
      'Proceed to payment',
      name: 'proceedToPayment',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully recharged your wallet`
  String get youHaveSuccessfullyRechargedYourWallet {
    return Intl.message(
      'You have successfully recharged your wallet',
      name: 'youHaveSuccessfullyRechargedYourWallet',
      desc: '',
      args: [],
    );
  }

  /// `Failed to recharge the balance`
  String get failedToRechargeTheBalance {
    return Intl.message(
      'Failed to recharge the balance',
      name: 'failedToRechargeTheBalance',
      desc: '',
      args: [],
    );
  }

  /// `Note That`
  String get noteThat {
    return Intl.message(
      'Note That',
      name: 'noteThat',
      desc: '',
      args: [],
    );
  }

  /// `Your subtotal charge is`
  String get yourSubtotalChargeIs {
    return Intl.message(
      'Your subtotal charge is',
      name: 'yourSubtotalChargeIs',
      desc: '',
      args: [],
    );
  }

  /// `with a VAT cost of`
  String get withVATCostOf {
    return Intl.message(
      'with a VAT cost of',
      name: 'withVATCostOf',
      desc: '',
      args: [],
    );
  }

  /// `for a total of`
  String get forTotalOf {
    return Intl.message(
      'for a total of',
      name: 'forTotalOf',
      desc: '',
      args: [],
    );
  }

  /// `SubTotal`
  String get subTotal {
    return Intl.message(
      'SubTotal',
      name: 'subTotal',
      desc: '',
      args: [],
    );
  }

  /// `VAT`
  String get vat {
    return Intl.message(
      'VAT',
      name: 'vat',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get doctorMale {
    return Intl.message(
      'Male',
      name: 'doctorMale',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get doctorFemale {
    return Intl.message(
      'Female',
      name: 'doctorFemale',
      desc: '',
      args: [],
    );
  }

  /// `Available Time`
  String get availableTime {
    return Intl.message(
      'Available Time',
      name: 'availableTime',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Tomorrow`
  String get tomorrow {
    return Intl.message(
      'Tomorrow',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `Next Week`
  String get nextWeek {
    return Intl.message(
      'Next Week',
      name: 'nextWeek',
      desc: '',
      args: [],
    );
  }

  /// `Virtual Clinic`
  String get virtualClinic {
    return Intl.message(
      'Virtual Clinic',
      name: 'virtualClinic',
      desc: '',
      args: [],
    );
  }

  /// `Online Time`
  String get onlineTime {
    return Intl.message(
      'Online Time',
      name: 'onlineTime',
      desc: '',
      args: [],
    );
  }

  /// `Time in Clinic`
  String get timeInClinic {
    return Intl.message(
      'Time in Clinic',
      name: 'timeInClinic',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Doctor Data`
  String get doctorData {
    return Intl.message(
      'Doctor Data',
      name: 'doctorData',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience {
    return Intl.message(
      'Experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get patients {
    return Intl.message(
      'Patients',
      name: 'patients',
      desc: '',
      args: [],
    );
  }

  /// `About Doctor`
  String get aboutDoctor {
    return Intl.message(
      'About Doctor',
      name: 'aboutDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Work Time`
  String get workTime {
    return Intl.message(
      'Work Time',
      name: 'workTime',
      desc: '',
      args: [],
    );
  }

  /// `Consultation Price`
  String get consultationPrice {
    return Intl.message(
      'Consultation Price',
      name: 'consultationPrice',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sar {
    return Intl.message(
      'SAR',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `Choose Date`
  String get chooseDate {
    return Intl.message(
      'Choose Date',
      name: 'chooseDate',
      desc: '',
      args: [],
    );
  }

  /// `Choose your suitable date`
  String get chooseYourSuitableDate {
    return Intl.message(
      'Choose your suitable date',
      name: 'chooseYourSuitableDate',
      desc: '',
      args: [],
    );
  }

  /// `Choose Time`
  String get chooseTime {
    return Intl.message(
      'Choose Time',
      name: 'chooseTime',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Reservation Information`
  String get confirmReservationInformation {
    return Intl.message(
      'Confirm Reservation Information',
      name: 'confirmReservationInformation',
      desc: '',
      args: [],
    );
  }

  /// `Booking Details`
  String get bookingDetails {
    return Intl.message(
      'Booking Details',
      name: 'bookingDetails',
      desc: '',
      args: [],
    );
  }

  /// `Pay Via`
  String get payVia {
    return Intl.message(
      'Pay Via',
      name: 'payVia',
      desc: '',
      args: [],
    );
  }

  /// `Debit Card`
  String get depiteCard {
    return Intl.message(
      'Debit Card',
      name: 'depiteCard',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for booking with us`
  String get thankYouForBookingWithUs {
    return Intl.message(
      'Thank you for booking with us',
      name: 'thankYouForBookingWithUs',
      desc: '',
      args: [],
    );
  }

  /// `Your booking has been confirmed successfully`
  String get yourBookingHasBeenConfirmedSuccessfully {
    return Intl.message(
      'Your booking has been confirmed successfully',
      name: 'yourBookingHasBeenConfirmedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `You have booked an appointment with`
  String get youHaveBookedAnAppointmentWith {
    return Intl.message(
      'You have booked an appointment with',
      name: 'youHaveBookedAnAppointmentWith',
      desc: '',
      args: [],
    );
  }

  /// `Modify Booking Time`
  String get modifyBookingTime {
    return Intl.message(
      'Modify Booking Time',
      name: 'modifyBookingTime',
      desc: '',
      args: [],
    );
  }

  /// `File medical number`
  String get fileMedicalNumber {
    return Intl.message(
      'File medical number',
      name: 'fileMedicalNumber',
      desc: '',
      args: [],
    );
  }

  /// `Read More`
  String get readMore {
    return Intl.message(
      'Read More',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Read Less`
  String get readLess {
    return Intl.message(
      'Read Less',
      name: 'readLess',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get patient {
    return Intl.message(
      'Patient',
      name: 'patient',
      desc: '',
      args: [],
    );
  }

  /// `Years`
  String get years {
    return Intl.message(
      'Years',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `Select an Appointment`
  String get selectAnAppointment {
    return Intl.message(
      'Select an Appointment',
      name: 'selectAnAppointment',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sarWithoutS {
    return Intl.message(
      'SAR',
      name: 'sarWithoutS',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuing {
    return Intl.message(
      'Continue',
      name: 'continuing',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuing2 {
    return Intl.message(
      'Continue',
      name: 'continuing2',
      desc: '',
      args: [],
    );
  }

  /// `Analysis`
  String get analysis {
    return Intl.message(
      'Analysis',
      name: 'analysis',
      desc: '',
      args: [],
    );
  }

  /// `Rays`
  String get rays {
    return Intl.message(
      'Rays',
      name: 'rays',
      desc: '',
      args: [],
    );
  }

  /// `Analysis result`
  String get analysisResult {
    return Intl.message(
      'Analysis result',
      name: 'analysisResult',
      desc: '',
      args: [],
    );
  }

  /// `Indicators`
  String get indicators {
    return Intl.message(
      'Indicators',
      name: 'indicators',
      desc: '',
      args: [],
    );
  }

  /// `Measurements values`
  String get measurementsValues {
    return Intl.message(
      'Measurements values',
      name: 'measurementsValues',
      desc: '',
      args: [],
    );
  }

  /// `Result`
  String get result {
    return Intl.message(
      'Result',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Download the test result`
  String get downloadTestResult {
    return Intl.message(
      'Download the test result',
      name: 'downloadTestResult',
      desc: '',
      args: [],
    );
  }

  /// `Vaccinations`
  String get vaccinations {
    return Intl.message(
      'Vaccinations',
      name: 'vaccinations',
      desc: '',
      args: [],
    );
  }

  /// `Medications`
  String get medications {
    return Intl.message(
      'Medications',
      name: 'medications',
      desc: '',
      args: [],
    );
  }

  /// `Name of the medicine`
  String get nameOfMedicine {
    return Intl.message(
      'Name of the medicine',
      name: 'nameOfMedicine',
      desc: '',
      args: [],
    );
  }

  /// `Dosage`
  String get dosage {
    return Intl.message(
      'Dosage',
      name: 'dosage',
      desc: '',
      args: [],
    );
  }

  /// `Download the treatment plan`
  String get downloadTreatmentPlan {
    return Intl.message(
      'Download the treatment plan',
      name: 'downloadTreatmentPlan',
      desc: '',
      args: [],
    );
  }

  /// `Insurance company name`
  String get insuranceCompanyName {
    return Intl.message(
      'Insurance company name',
      name: 'insuranceCompanyName',
      desc: '',
      args: [],
    );
  }

  /// `Insurance Approvals`
  String get insuranceApprovals {
    return Intl.message(
      'Insurance Approvals',
      name: 'insuranceApprovals',
      desc: '',
      args: [],
    );
  }

  /// `Your insurance information`
  String get yourInsuranceInformation {
    return Intl.message(
      'Your insurance information',
      name: 'yourInsuranceInformation',
      desc: '',
      args: [],
    );
  }

  /// `Insurance company`
  String get insuranceCompany {
    return Intl.message(
      'Insurance company',
      name: 'insuranceCompany',
      desc: '',
      args: [],
    );
  }

  /// `Choose your insurance company`
  String get chooseYourInsuranceCompany {
    return Intl.message(
      'Choose your insurance company',
      name: 'chooseYourInsuranceCompany',
      desc: '',
      args: [],
    );
  }

  /// `Enter your insurance number`
  String get enterYourInsuranceNumber {
    return Intl.message(
      'Enter your insurance number',
      name: 'enterYourInsuranceNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date`
  String get expiryDate {
    return Intl.message(
      'Expiry date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Select the expiry date written on your insurance card.`
  String get selectTheExpiryDateWrittenOnYourInsuranceCard {
    return Intl.message(
      'Select the expiry date written on your insurance card.',
      name: 'selectTheExpiryDateWrittenOnYourInsuranceCard',
      desc: '',
      args: [],
    );
  }

  /// `Insurance card image`
  String get insuranceCardImage {
    return Intl.message(
      'Insurance card image',
      name: 'insuranceCardImage',
      desc: '',
      args: [],
    );
  }

  /// `Upload a picture of your insurance card from here`
  String get uploadPictureOfYourInsuranceCardFromHere {
    return Intl.message(
      'Upload a picture of your insurance card from here',
      name: 'uploadPictureOfYourInsuranceCardFromHere',
      desc: '',
      args: [],
    );
  }

  /// `The service ends in`
  String get serviceEndsIn {
    return Intl.message(
      'The service ends in',
      name: 'serviceEndsIn',
      desc: '',
      args: [],
    );
  }

  /// `It has been approved`
  String get itHasBeenApproved {
    return Intl.message(
      'It has been approved',
      name: 'itHasBeenApproved',
      desc: '',
      args: [],
    );
  }

  /// `Under review`
  String get underReview {
    return Intl.message(
      'Under review',
      name: 'underReview',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get rejected {
    return Intl.message(
      'Rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `Add a family member`
  String get addFamilyMember {
    return Intl.message(
      'Add a family member',
      name: 'addFamilyMember',
      desc: '',
      args: [],
    );
  }

  /// `Add a new member`
  String get addNewMember {
    return Intl.message(
      'Add a new member',
      name: 'addNewMember',
      desc: '',
      args: [],
    );
  }

  /// `Select the gender`
  String get selectGender {
    return Intl.message(
      'Select the gender',
      name: 'selectGender',
      desc: '',
      args: [],
    );
  }

  /// `Medical history`
  String get medicalHistory {
    return Intl.message(
      'Medical history',
      name: 'medicalHistory',
      desc: '',
      args: [],
    );
  }

  /// `Has this person ever been diagnosed with a disease?`
  String get hasThisPersonEverBeenDiagnosedWithDisease {
    return Intl.message(
      'Has this person ever been diagnosed with a disease?',
      name: 'hasThisPersonEverBeenDiagnosedWithDisease',
      desc: '',
      args: [],
    );
  }

  /// `Add disease`
  String get addDisease {
    return Intl.message(
      'Add disease',
      name: 'addDisease',
      desc: '',
      args: [],
    );
  }

  /// `Disease name`
  String get diseaseName {
    return Intl.message(
      'Disease name',
      name: 'diseaseName',
      desc: '',
      args: [],
    );
  }

  /// `Write the name of the disease`
  String get writeNameOfDisease {
    return Intl.message(
      'Write the name of the disease',
      name: 'writeNameOfDisease',
      desc: '',
      args: [],
    );
  }

  /// `Years of injury`
  String get yearsOfInjury {
    return Intl.message(
      'Years of injury',
      name: 'yearsOfInjury',
      desc: '',
      args: [],
    );
  }

  /// `Select the years of injury`
  String get selectYearsOfInjury {
    return Intl.message(
      'Select the years of injury',
      name: 'selectYearsOfInjury',
      desc: '',
      args: [],
    );
  }

  /// `Please select the years of injury`
  String get pleaseSelectYearsOfInjury {
    return Intl.message(
      'Please select the years of injury',
      name: 'pleaseSelectYearsOfInjury',
      desc: '',
      args: [],
    );
  }

  /// `please enter disease name`
  String get pleaseEnterDiseaseName {
    return Intl.message(
      'please enter disease name',
      name: 'pleaseEnterDiseaseName',
      desc: '',
      args: [],
    );
  }

  /// `File is opening`
  String get fileIsOpening {
    return Intl.message(
      'File is opening',
      name: 'fileIsOpening',
      desc: '',
      args: [],
    );
  }

  /// `PDF Preview`
  String get pdfPreview {
    return Intl.message(
      'PDF Preview',
      name: 'pdfPreview',
      desc: '',
      args: [],
    );
  }

  /// `Download File`
  String get downloadFile {
    return Intl.message(
      'Download File',
      name: 'downloadFile',
      desc: '',
      args: [],
    );
  }

  /// `File is downloading`
  String get fileIsDownloading {
    return Intl.message(
      'File is downloading',
      name: 'fileIsDownloading',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Accepted`
  String get accepted {
    return Intl.message(
      'Accepted',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `Under Progress`
  String get underProgress {
    return Intl.message(
      'Under Progress',
      name: 'underProgress',
      desc: '',
      args: [],
    );
  }

  /// `Medical file number`
  String get medicalFileNumber {
    return Intl.message(
      'Medical file number',
      name: 'medicalFileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Increased erythrocyte sedimentation rate. This may be an indication of infection. We advise you to consult a doctor.`
  String get testResultAdvice {
    return Intl.message(
      'Increased erythrocyte sedimentation rate. This may be an indication of infection. We advise you to consult a doctor.',
      name: 'testResultAdvice',
      desc: '',
      args: [],
    );
  }

  /// `Invalid OTP`
  String get invalidOtp {
    return Intl.message(
      'Invalid OTP',
      name: 'invalidOtp',
      desc: '',
      args: [],
    );
  }

  /// `The maximum quantity is 5`
  String get theMaximumQuantityIsFive {
    return Intl.message(
      'The maximum quantity is 5',
      name: 'theMaximumQuantityIsFive',
      desc: '',
      args: [],
    );
  }

  /// `The item has been added successfully`
  String get theItemHasBeenAddedSuccessfully {
    return Intl.message(
      'The item has been added successfully',
      name: 'theItemHasBeenAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `This item is already in the cart`
  String get thisItemIsAlreadyInTheCart {
    return Intl.message(
      'This item is already in the cart',
      name: 'thisItemIsAlreadyInTheCart',
      desc: '',
      args: [],
    );
  }

  /// `The item has been removed`
  String get theItemHasBeenRemoved {
    return Intl.message(
      'The item has been removed',
      name: 'theItemHasBeenRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Choose Medical Center`
  String get chooseMedicalCenter {
    return Intl.message(
      'Choose Medical Center',
      name: 'chooseMedicalCenter',
      desc: '',
      args: [],
    );
  }

  /// `No time available in this day`
  String get noTimeAvailableInThisDay {
    return Intl.message(
      'No time available in this day',
      name: 'noTimeAvailableInThisDay',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Failed to cancel reservation`
  String get failedToCancelReservation {
    return Intl.message(
      'Failed to cancel reservation',
      name: 'failedToCancelReservation',
      desc: '',
      args: [],
    );
  }

  /// `Pay Now`
  String get payNow {
    return Intl.message(
      'Pay Now',
      name: 'payNow',
      desc: '',
      args: [],
    );
  }

  /// `Reschedule the appointment`
  String get rescheduleTheAppointment {
    return Intl.message(
      'Reschedule the appointment',
      name: 'rescheduleTheAppointment',
      desc: '',
      args: [],
    );
  }

  /// `There is no record statement data`
  String get thereIsNoRecordStatementData {
    return Intl.message(
      'There is no record statement data',
      name: 'thereIsNoRecordStatementData',
      desc: '',
      args: [],
    );
  }

  /// `There is no lab result data`
  String get thereIsNoLabResultData {
    return Intl.message(
      'There is no lab result data',
      name: 'thereIsNoLabResultData',
      desc: '',
      args: [],
    );
  }

  /// `There is no ray result data`
  String get thereIsNoRayResultData {
    return Intl.message(
      'There is no ray result data',
      name: 'thereIsNoRayResultData',
      desc: '',
      args: [],
    );
  }

  /// `There is no prescription data`
  String get thereIsNoPrescriptionData {
    return Intl.message(
      'There is no prescription data',
      name: 'thereIsNoPrescriptionData',
      desc: '',
      args: [],
    );
  }

  /// `There is no offer data`
  String get thereIsNoOfferData {
    return Intl.message(
      'There is no offer data',
      name: 'thereIsNoOfferData',
      desc: '',
      args: [],
    );
  }

  /// `Your booking has been rescheduled successfully`
  String get yourBookingHasBeenRescheduledSuccessfully {
    return Intl.message(
      'Your booking has been rescheduled successfully',
      name: 'yourBookingHasBeenRescheduledSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to reschedule reservation`
  String get failedToRescheduleReservation {
    return Intl.message(
      'Failed to reschedule reservation',
      name: 'failedToRescheduleReservation',
      desc: '',
      args: [],
    );
  }

  /// `Payment is done successfully`
  String get paymentIsDoneSuccessfully {
    return Intl.message(
      'Payment is done successfully',
      name: 'paymentIsDoneSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Payment failed`
  String get paymentFailed {
    return Intl.message(
      'Payment failed',
      name: 'paymentFailed',
      desc: '',
      args: [],
    );
  }

  /// `Payment is done but failed to save the transaction`
  String get paymentIsDoneButFailedToSaveTheTransaction {
    return Intl.message(
      'Payment is done but failed to save the transaction',
      name: 'paymentIsDoneButFailedToSaveTheTransaction',
      desc: '',
      args: [],
    );
  }

  /// `The cart is empty`
  String get theCartIsEmpty {
    return Intl.message(
      'The cart is empty',
      name: 'theCartIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `You must login first to proceed with the payment`
  String get youMustLoginFirstToProceedWithThePayment {
    return Intl.message(
      'You must login first to proceed with the payment',
      name: 'youMustLoginFirstToProceedWithThePayment',
      desc: '',
      args: [],
    );
  }

  /// `Is Paid`
  String get isPaid {
    return Intl.message(
      'Is Paid',
      name: 'isPaid',
      desc: '',
      args: [],
    );
  }

  /// `Payment for offers order`
  String get paymentForOffersOrder {
    return Intl.message(
      'Payment for offers order',
      name: 'paymentForOffersOrder',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations! Your payment with Tabby has been confirmed`
  String get congratulationsYourPaymentWithTabbyHasBeenConfirmed {
    return Intl.message(
      'Congratulations! Your payment with Tabby has been confirmed',
      name: 'congratulationsYourPaymentWithTabbyHasBeenConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Your payment is rejected`
  String get yourPaymentIsRejected {
    return Intl.message(
      'Your payment is rejected',
      name: 'yourPaymentIsRejected',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations! Your payment with Tamara has been confirmed`
  String get congratulationsYourPaymentWithTamaraHasBeenConfirmed {
    return Intl.message(
      'Congratulations! Your payment with Tamara has been confirmed',
      name: 'congratulationsYourPaymentWithTamaraHasBeenConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `You have to login first to add this item in your cart`
  String get youHaveToLoginFirstInOrderToAddThisItemInYourCart {
    return Intl.message(
      'You have to login first to add this item in your cart',
      name: 'youHaveToLoginFirstInOrderToAddThisItemInYourCart',
      desc: '',
      args: [],
    );
  }

  /// `You aren't authorized to access this page`
  String get youArentAuthorizedToAccessThisPage {
    return Intl.message(
      'You aren\'t authorized to access this page',
      name: 'youArentAuthorizedToAccessThisPage',
      desc: '',
      args: [],
    );
  }

  /// `No data available now`
  String get noDataAvailableNow {
    return Intl.message(
      'No data available now',
      name: 'noDataAvailableNow',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Failed to pay`
  String get failedToPay {
    return Intl.message(
      'Failed to pay',
      name: 'failedToPay',
      desc: '',
      args: [],
    );
  }

  /// `Service not available yet, coming soon`
  String get serviceNotAvailableYetComingSoon {
    return Intl.message(
      'Service not available yet, coming soon',
      name: 'serviceNotAvailableYetComingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Please login first to book an appointment`
  String get pleaseLoginFirstToBookAnAppointment {
    return Intl.message(
      'Please login first to book an appointment',
      name: 'pleaseLoginFirstToBookAnAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Appointment booking with Dr.`
  String get appointmentBookingWithDr {
    return Intl.message(
      'Appointment booking with Dr.',
      name: 'appointmentBookingWithDr',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sar2 {
    return Intl.message(
      'SAR',
      name: 'sar2',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `View the offer`
  String get viewTheOffer {
    return Intl.message(
      'View the offer',
      name: 'viewTheOffer',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Features of the offer`
  String get featuresOfTheOffer {
    return Intl.message(
      'Features of the offer',
      name: 'featuresOfTheOffer',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message(
      'Add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Shopping cart`
  String get shoppingCart {
    return Intl.message(
      'Shopping cart',
      name: 'shoppingCart',
      desc: '',
      args: [],
    );
  }

  /// `Receipt price`
  String get receiptPrice {
    return Intl.message(
      'Receipt price',
      name: 'receiptPrice',
      desc: '',
      args: [],
    );
  }

  /// `Total price`
  String get totalPrice {
    return Intl.message(
      'Total price',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Confirm the order`
  String get confirmTheOrder {
    return Intl.message(
      'Confirm the order',
      name: 'confirmTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Perform the order`
  String get performTheOrder {
    return Intl.message(
      'Perform the order',
      name: 'performTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Tabby`
  String get tabby {
    return Intl.message(
      'Tabby',
      name: 'tabby',
      desc: '',
      args: [],
    );
  }

  /// `Tamara`
  String get tamara {
    return Intl.message(
      'Tamara',
      name: 'tamara',
      desc: '',
      args: [],
    );
  }

  /// `Dermatology and Beauty`
  String get dermatologyAndBeauty {
    return Intl.message(
      'Dermatology and Beauty',
      name: 'dermatologyAndBeauty',
      desc: '',
      args: [],
    );
  }

  /// `Medical Insurance`
  String get medicalInsurance {
    return Intl.message(
      'Medical Insurance',
      name: 'medicalInsurance',
      desc: '',
      args: [],
    );
  }

  /// `Laboratory and X-Ray Results`
  String get laboratoryAndxRayResults {
    return Intl.message(
      'Laboratory and X-Ray Results',
      name: 'laboratoryAndxRayResults',
      desc: '',
      args: [],
    );
  }

  /// `Home Doctor's Visit`
  String get homeDoctorsVisit {
    return Intl.message(
      'Home Doctor\'s Visit',
      name: 'homeDoctorsVisit',
      desc: '',
      args: [],
    );
  }

  /// `Home Analysis Service`
  String get homeAnalysisService {
    return Intl.message(
      'Home Analysis Service',
      name: 'homeAnalysisService',
      desc: '',
      args: [],
    );
  }

  /// `Home Physical Therapy`
  String get homePhysicalTherapy {
    return Intl.message(
      'Home Physical Therapy',
      name: 'homePhysicalTherapy',
      desc: '',
      args: [],
    );
  }

  /// `The service`
  String get theService {
    return Intl.message(
      'The service',
      name: 'theService',
      desc: '',
      args: [],
    );
  }

  /// `Prescription Image`
  String get prescriptionImage {
    return Intl.message(
      'Prescription Image',
      name: 'prescriptionImage',
      desc: '',
      args: [],
    );
  }

  /// `Upload your prescription image here`
  String get uploadYourPrescriptionImageHere {
    return Intl.message(
      'Upload your prescription image here',
      name: 'uploadYourPrescriptionImageHere',
      desc: '',
      args: [],
    );
  }

  /// `Uploaded successfully`
  String get uploadedSuccessfully {
    return Intl.message(
      'Uploaded successfully',
      name: 'uploadedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Enter your location`
  String get enterYourLocation {
    return Intl.message(
      'Enter your location',
      name: 'enterYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Patient Address`
  String get patientAddress {
    return Intl.message(
      'Patient Address',
      name: 'patientAddress',
      desc: '',
      args: [],
    );
  }

  /// `Visit price`
  String get visitPrice {
    return Intl.message(
      'Visit price',
      name: 'visitPrice',
      desc: '',
      args: [],
    );
  }

  /// `Patient data`
  String get patientData {
    return Intl.message(
      'Patient data',
      name: 'patientData',
      desc: '',
      args: [],
    );
  }

  /// `My Bills`
  String get myBills {
    return Intl.message(
      'My Bills',
      name: 'myBills',
      desc: '',
      args: [],
    );
  }

  /// `Download the bill`
  String get downloadTheBill {
    return Intl.message(
      'Download the bill',
      name: 'downloadTheBill',
      desc: '',
      args: [],
    );
  }

  /// `Dr. Saeed for Skin Care and Dermatology`
  String get drSaeedForSkinCareAndDermatology {
    return Intl.message(
      'Dr. Saeed for Skin Care and Dermatology',
      name: 'drSaeedForSkinCareAndDermatology',
      desc: '',
      args: [],
    );
  }

  /// `Examinations`
  String get examinations {
    return Intl.message(
      'Examinations',
      name: 'examinations',
      desc: '',
      args: [],
    );
  }

  /// `Search for examinations`
  String get searchForExaminations {
    return Intl.message(
      'Search for examinations',
      name: 'searchForExaminations',
      desc: '',
      args: [],
    );
  }

  /// `Important examinations`
  String get importantExaminations {
    return Intl.message(
      'Important examinations',
      name: 'importantExaminations',
      desc: '',
      args: [],
    );
  }

  /// `Examination details`
  String get examinationDetails {
    return Intl.message(
      'Examination details',
      name: 'examinationDetails',
      desc: '',
      args: [],
    );
  }

  /// `About Examination`
  String get aboutExaminations {
    return Intl.message(
      'About Examination',
      name: 'aboutExaminations',
      desc: '',
      args: [],
    );
  }

  /// `Examination Results`
  String get examinationResults {
    return Intl.message(
      'Examination Results',
      name: 'examinationResults',
      desc: '',
      args: [],
    );
  }

  /// `You need to select medical center first in order to view the available data`
  String get youNeedtoSelectMedicalCenterFirstInOrderToViewTheAvailableData {
    return Intl.message(
      'You need to select medical center first in order to view the available data',
      name: 'youNeedtoSelectMedicalCenterFirstInOrderToViewTheAvailableData',
      desc: '',
      args: [],
    );
  }

  /// `Reporting results`
  String get reportingResults {
    return Intl.message(
      'Reporting results',
      name: 'reportingResults',
      desc: '',
      args: [],
    );
  }

  /// `Coming Soon`
  String get comingSoon {
    return Intl.message(
      'Coming Soon',
      name: 'comingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Offer Details`
  String get offerDetails {
    return Intl.message(
      'Offer Details',
      name: 'offerDetails',
      desc: '',
      args: [],
    );
  }

  /// `Home Care Bundle`
  String get homeCareBundle {
    return Intl.message(
      'Home Care Bundle',
      name: 'homeCareBundle',
      desc: '',
      args: [],
    );
  }

  /// `Search for bundle`
  String get searchForBundle {
    return Intl.message(
      'Search for bundle',
      name: 'searchForBundle',
      desc: '',
      args: [],
    );
  }

  /// `Important Bundles`
  String get importantBundles {
    return Intl.message(
      'Important Bundles',
      name: 'importantBundles',
      desc: '',
      args: [],
    );
  }

  /// `Select service`
  String get selectService {
    return Intl.message(
      'Select service',
      name: 'selectService',
      desc: '',
      args: [],
    );
  }

  /// `No services found`
  String get noServicesFound {
    return Intl.message(
      'No services found',
      name: 'noServicesFound',
      desc: '',
      args: [],
    );
  }

  /// `No care givers available`
  String get noCareGiversAvailable {
    return Intl.message(
      'No care givers available',
      name: 'noCareGiversAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Care Givers`
  String get careGivers {
    return Intl.message(
      'Care Givers',
      name: 'careGivers',
      desc: '',
      args: [],
    );
  }

  /// `No time slots available`
  String get noTimeSlotsAvailable {
    return Intl.message(
      'No time slots available',
      name: 'noTimeSlotsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Please select time slot first`
  String get pleaseSelectTimeSlotFirst {
    return Intl.message(
      'Please select time slot first',
      name: 'pleaseSelectTimeSlotFirst',
      desc: '',
      args: [],
    );
  }

  /// `Important Services`
  String get importantServices {
    return Intl.message(
      'Important Services',
      name: 'importantServices',
      desc: '',
      args: [],
    );
  }

  /// `Get the best deals on medical services`
  String get getTheBestDealsOnMedicalServices {
    return Intl.message(
      'Get the best deals on medical services',
      name: 'getTheBestDealsOnMedicalServices',
      desc: '',
      args: [],
    );
  }

  /// `Browse offers`
  String get browseTheOffers {
    return Intl.message(
      'Browse offers',
      name: 'browseTheOffers',
      desc: '',
      args: [],
    );
  }

  /// `You have a medical question?`
  String get youHaveAMedicalQuestion {
    return Intl.message(
      'You have a medical question?',
      name: 'youHaveAMedicalQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Consult a specialist within 24 hours`
  String get consultASpecialistWithin24Hours {
    return Intl.message(
      'Consult a specialist within 24 hours',
      name: 'consultASpecialistWithin24Hours',
      desc: '',
      args: [],
    );
  }

  /// `Ask Now`
  String get askNow {
    return Intl.message(
      'Ask Now',
      name: 'askNow',
      desc: '',
      args: [],
    );
  }

  /// `My Appointments`
  String get myAppointments {
    return Intl.message(
      'My Appointments',
      name: 'myAppointments',
      desc: '',
      args: [],
    );
  }

  /// `You need to login first`
  String get youNeedToLoginFirst {
    return Intl.message(
      'You need to login first',
      name: 'youNeedToLoginFirst',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been confirmed`
  String get yourOrderHasBeenConfirmed {
    return Intl.message(
      'Your order has been confirmed',
      name: 'yourOrderHasBeenConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to confirm the order`
  String get failedToConfirmTheOrder {
    return Intl.message(
      'Failed to confirm the order',
      name: 'failedToConfirmTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Laboratory and Radiology Results`
  String get laboratoryAndRadiologyResults {
    return Intl.message(
      'Laboratory and Radiology Results',
      name: 'laboratoryAndRadiologyResults',
      desc: '',
      args: [],
    );
  }

  /// `Radiology`
  String get radiology {
    return Intl.message(
      'Radiology',
      name: 'radiology',
      desc: '',
      args: [],
    );
  }

  /// `Laboratory`
  String get laboratory {
    return Intl.message(
      'Laboratory',
      name: 'laboratory',
      desc: '',
      args: [],
    );
  }

  /// `Get the best home medical packages`
  String get getTheBestHomeMedicalPackages {
    return Intl.message(
      'Get the best home medical packages',
      name: 'getTheBestHomeMedicalPackages',
      desc: '',
      args: [],
    );
  }

  /// `Browse packages`
  String get browsePackages {
    return Intl.message(
      'Browse packages',
      name: 'browsePackages',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Request submitted successfully`
  String get requestSubmittedSuccessfully {
    return Intl.message(
      'Request submitted successfully',
      name: 'requestSubmittedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Your request is now being processed`
  String get yourRequestIsNowBeingProcessed {
    return Intl.message(
      'Your request is now being processed',
      name: 'yourRequestIsNowBeingProcessed',
      desc: '',
      args: [],
    );
  }

  /// `Continue browsing`
  String get continueBrowsing {
    return Intl.message(
      'Continue browsing',
      name: 'continueBrowsing',
      desc: '',
      args: [],
    );
  }

  /// `Return to home`
  String get returnToHome {
    return Intl.message(
      'Return to home',
      name: 'returnToHome',
      desc: '',
      args: [],
    );
  }

  /// `This service is not available yet`
  String get thisServiceIsNotAvailableYet {
    return Intl.message(
      'This service is not available yet',
      name: 'thisServiceIsNotAvailableYet',
      desc: '',
      args: [],
    );
  }

  /// `Laboratory Results`
  String get laboratoryResults {
    return Intl.message(
      'Laboratory Results',
      name: 'laboratoryResults',
      desc: '',
      args: [],
    );
  }

  /// `Select the patient`
  String get selectThePatient {
    return Intl.message(
      'Select the patient',
      name: 'selectThePatient',
      desc: '',
      args: [],
    );
  }

  /// `Go to my appointments`
  String get goToMyAppointments {
    return Intl.message(
      'Go to my appointments',
      name: 'goToMyAppointments',
      desc: '',
      args: [],
    );
  }

  /// `Visit`
  String get visit {
    return Intl.message(
      'Visit',
      name: 'visit',
      desc: '',
      args: [],
    );
  }

  /// `Booking`
  String get booking {
    return Intl.message(
      'Booking',
      name: 'booking',
      desc: '',
      args: [],
    );
  }

  /// `Sick Leaves`
  String get sickLeaves {
    return Intl.message(
      'Sick Leaves',
      name: 'sickLeaves',
      desc: '',
      args: [],
    );
  }

  /// `Rays`
  String get rays2 {
    return Intl.message(
      'Rays',
      name: 'rays2',
      desc: '',
      args: [],
    );
  }

  /// `Analyses`
  String get anaylses2 {
    return Intl.message(
      'Analyses',
      name: 'anaylses2',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Customer Service`
  String get customerService {
    return Intl.message(
      'Customer Service',
      name: 'customerService',
      desc: '',
      args: [],
    );
  }

  /// `Instant Consultation with LifeCare`
  String get instantConsultationWithLifeCare {
    return Intl.message(
      'Instant Consultation with LifeCare',
      name: 'instantConsultationWithLifeCare',
      desc: '',
      args: [],
    );
  }

  /// `You can consult a specialist doctor via video through the Live Care feature`
  String get youCanConsultASpecialistDoctorViaVideoThroughLifeCareFeature {
    return Intl.message(
      'You can consult a specialist doctor via video through the Live Care feature',
      name: 'youCanConsultASpecialistDoctorViaVideoThroughLifeCareFeature',
      desc: '',
      args: [],
    );
  }

  /// `X-Ray Results`
  String get xrayResults {
    return Intl.message(
      'X-Ray Results',
      name: 'xrayResults',
      desc: '',
      args: [],
    );
  }

  /// `Analysis Results`
  String get analysisResults {
    return Intl.message(
      'Analysis Results',
      name: 'analysisResults',
      desc: '',
      args: [],
    );
  }

  /// `Medical Reports`
  String get medicalReports {
    return Intl.message(
      'Medical Reports',
      name: 'medicalReports',
      desc: '',
      args: [],
    );
  }

  /// `Apple Watch`
  String get appleWatch {
    return Intl.message(
      'Apple Watch',
      name: 'appleWatch',
      desc: '',
      args: [],
    );
  }

  /// `Our Locations`
  String get ourLocations {
    return Intl.message(
      'Our Locations',
      name: 'ourLocations',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming Appointments`
  String get upcomingAppointments {
    return Intl.message(
      'Upcoming Appointments',
      name: 'upcomingAppointments',
      desc: '',
      args: [],
    );
  }

  /// `Payments Due`
  String get paymentsDue {
    return Intl.message(
      'Payments Due',
      name: 'paymentsDue',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll2 {
    return Intl.message(
      'View All',
      name: 'viewAll2',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get lightMode {
    return Intl.message(
      'Light Mode',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Payment Policy`
  String get paymentPolicy {
    return Intl.message(
      'Payment Policy',
      name: 'paymentPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Intellectual Property Rights Policy`
  String get intellectualPropertyRightsPolicy {
    return Intl.message(
      'Intellectual Property Rights Policy',
      name: 'intellectualPropertyRightsPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions of Use of the Platform`
  String get termsAndConditionsOfUseOfThePlatform {
    return Intl.message(
      'Terms and Conditions of Use of the Platform',
      name: 'termsAndConditionsOfUseOfThePlatform',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us via WhatsApp`
  String get contactUsViaWhatsApp {
    return Intl.message(
      'Contact Us via WhatsApp',
      name: 'contactUsViaWhatsApp',
      desc: '',
      args: [],
    );
  }

  /// `Family`
  String get family {
    return Intl.message(
      'Family',
      name: 'family',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Bookings`
  String get bookings {
    return Intl.message(
      'Bookings',
      name: 'bookings',
      desc: '',
      args: [],
    );
  }

  /// `Previous Payments`
  String get previousPayments {
    return Intl.message(
      'Previous Payments',
      name: 'previousPayments',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payments {
    return Intl.message(
      'Payments',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Patient Name`
  String get patientName {
    return Intl.message(
      'Patient Name',
      name: 'patientName',
      desc: '',
      args: [],
    );
  }

  /// `Doctor Name`
  String get doctorName {
    return Intl.message(
      'Doctor Name',
      name: 'doctorName',
      desc: '',
      args: [],
    );
  }

  /// `Service Type`
  String get serviceType {
    return Intl.message(
      'Service Type',
      name: 'serviceType',
      desc: '',
      args: [],
    );
  }

  /// `Service Price`
  String get servicePrice {
    return Intl.message(
      'Service Price',
      name: 'servicePrice',
      desc: '',
      args: [],
    );
  }

  /// `Booking Date`
  String get bookingDate {
    return Intl.message(
      'Booking Date',
      name: 'bookingDate',
      desc: '',
      args: [],
    );
  }

  /// `Saudi`
  String get saudi {
    return Intl.message(
      'Saudi',
      name: 'saudi',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Foreigner`
  String get foreigner {
    return Intl.message(
      'Foreigner',
      name: 'foreigner',
      desc: '',
      args: [],
    );
  }

  /// `Service Summary`
  String get serviceSummary {
    return Intl.message(
      'Service Summary',
      name: 'serviceSummary',
      desc: '',
      args: [],
    );
  }

  /// `Soon`
  String get soon {
    return Intl.message(
      'Soon',
      name: 'soon',
      desc: '',
      args: [],
    );
  }

  /// `No payments due at the moment`
  String get noPaymentsDueAtTheMoment {
    return Intl.message(
      'No payments due at the moment',
      name: 'noPaymentsDueAtTheMoment',
      desc: '',
      args: [],
    );
  }

  /// `Go to Settings`
  String get goToSettings {
    return Intl.message(
      'Go to Settings',
      name: 'goToSettings',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Location permission is required to show directions. Please allow location access and try again.`
  String get locationPermissionIsRequiredToShowDirections {
    return Intl.message(
      'Location permission is required to show directions. Please allow location access and try again.',
      name: 'locationPermissionIsRequiredToShowDirections',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get orderNum {
    return Intl.message(
      'Order Number',
      name: 'orderNum',
      desc: '',
      args: [],
    );
  }

  /// `Type of Analysis`
  String get typeOfAnalysis {
    return Intl.message(
      'Type of Analysis',
      name: 'typeOfAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Continue to Payment`
  String get continueToPayment {
    return Intl.message(
      'Continue to Payment',
      name: 'continueToPayment',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
