import 'package:remain/l10n/generated/l10n.dart';

class AppStrings {
  const AppStrings._();

  static const String englishFont = 'englishFont';
  static const String arabicFont = 'arabicFont';

  //login related
  static const String patientId = 'PatientId';
  static const String patientID = 'patientID';

  static const String loginType = 'logintype';
  static const String loginTypeMRN = 'mrn';
  static const String loginTypeID = 'id';
  static const String loginCode = 'logincode';
  static const String loginCodeValue = '52492';
  static const String loginPhone = 'loginphone';
  static const String fbToken = 'fbToken';
  static const String typeofDevice = 'typeofDevice';
  static const String lang = 'Lang';
  static const String en = 'EN';
  static const String ar = 'AR';
  static const deviceAndroidType = 'android';

  //register related

  static const String name = 'name';
  static const String email = 'email';
  static const String password = 'password';
  static const String confirmPassword = 'confirmPassword';
  static const String phone = 'phone';
  static const String gender = 'gender';
  static const String dob = 'dob';
  static const String nationalityId = 'nationality_id';
  static const String fbTokenRegister = 'FbToken';

  //balance related
  static const String patientIdNum = 'PatientIdNum';
  static const String programID = 'programID';
  static const String programVerID = 'programVerID';
  static const String bookingID = 'bookingID';
  static const String paymentRepID = 'paymentRepId';
  static const String status = 'status';
  static const String isCash = 'isCash';
  static const String amount = 'amount';
  static const String vatAmount = 'vatAmount';
  static const String comment = 'comment';
  static const String specialtieID = 'SpecialtieID';
  static const String locationsID = 'LocationsID';

  //reservation related
  static const String locationId = 'LocationID';
  static const String isVideoSession = 'IsVideoSession';
  static const String bookingId = 'bookingID';
  static const String time = 'time';

  static const String online = 'online';
  static const String offline = 'offline';

  static const String specID = 'specID';
  static const String isOnline = 'IsOnline';
  static const String cancel = 'cancel';

  static const String dermatology = 'Dermatology';

  static const String doctorImageTest =
      'https://image.similarpng.com/very-thumbnail/2020/05/Male-young-doctor-transparent-PNG.png';

  static List<String> availableTime(AppLocalizations l10n) => [
        l10n.today,
        l10n.tomorrow,
        l10n.nextWeek,
      ];
}

class TransactionTypeStrings {
  static const String respCenterType = 'respCenterType';
  static const String patientMrn = 'patientMrn';
  static const String sickLeave = 'SickLeave';
  static const String patientId = 'patientId';
  static const String lapType = 'L';
  static const String xrayType = 'X';
  static const String prescriptionType = 'P';
  static const String fromDate = 'fromDate';
  static const String toDate = 'toDate';
  static const String value = 'value';
  static const String spName = 'spName';
  static const String documentType = 'documentType';
  static const String rptID = 'rptID';
}

class ApprovalStatus {
  static const String all = 'All';
  static const String approved = 'Approved';
  static const String pending = 'Pending';
  static const String rejected = 'Rejected';
}

class MedicalCenterLocation {
  static const int saeedMedicalLocation = 2; // location Gadda
  static const int alharameenRoudaLocation = 3; // location Riyadh
  static const int alharameenQortobaLocation = 4; // location Riyadh
}

class AppleCredentials {
  static const String appleTestPhone = '539418967';
  static const String appleTestId = '2466988744';
}

class AndroidCredentials {
  static const String androidTestPhone = '505050501';
  static const String androidTestId = '0987654321';
  static const String androidTestFileNum = '653069';
}
