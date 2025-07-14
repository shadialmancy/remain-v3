// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter();

  @override
  final Map<String, PageFactory> pagesMap = {
    AddCreditCardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCreditCardScreen(),
      );
    },
    AddFamilyMemberRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddFamilyMemberScreen(),
      );
    },
    AnimatedCompletingBookingRoute.name: (routeData) {
      final args = routeData.argsAs<AnimatedCompletingBookingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AnimatedCompletingBookingScreen(
          doctorData: args.doctorData,
          selectedDate: args.selectedDate,
          selectedTime: args.selectedTime,
          key: args.key,
        ),
      );
    },
    BookingSchedulesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookingSchedulesScreen(),
      );
    },
    CardPaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CardPaymentScreen(),
      );
    },
    CardPaymentsDueRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CardPaymentsDueScreen(),
      );
    },
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartScreen(),
      );
    },
    ChangeLanguageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangeLanguageScreen(),
      );
    },
    ConfirmBookingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConfirmBookingScreen(),
      );
    },
    ConfirmOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConfirmOrderScreen(),
      );
    },
    ContactUsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactUsScreen(),
      );
    },
    DashboardLayoutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardLayoutScreen(),
      );
    },
    DoctorDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DoctorDetailsScreen(),
      );
    },
    EditInsuranceProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditInsuranceProfileScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileScreen(),
      );
    },
    ExaminationsCartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExaminationsCartScreen(),
      );
    },
    ExaminationsOfferDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ExaminationsOfferDetailsRouteArgs>(
          orElse: () => const ExaminationsOfferDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ExaminationsOfferDetailsScreen(
          key: args.key,
          offerData: args.offerData,
        ),
      );
    },
    ExaminationsOfferHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExaminationsOfferHomeScreen(),
      );
    },
    FamilyAndRelativesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FamilyAndRelativesScreen(),
      );
    },
    HelpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HelpScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    InsuranceApprovalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InsuranceApprovalScreen(),
      );
    },
    InsuranceCompanyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InsuranceCompanyScreen(),
      );
    },
    InsurancesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InsurancesScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MapDirectionsRoute.name: (routeData) {
      final args = routeData.argsAs<MapDirectionsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MapDirectionsScreen(
          key: args.key,
          locationData: args.locationData,
        ),
      );
    },
    MedicalRecordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MedicalRecordScreen(),
      );
    },
    MyBillsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyBillsScreen(),
      );
    },
    OfferDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OfferDetailsRouteArgs>(
          orElse: () => const OfferDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OfferDetailsScreen(
          key: args.key,
          offerData: args.offerData,
        ),
      );
    },
    OffersCardPaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OffersCardPaymentScreen(),
      );
    },
    OffersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OffersScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    OurLocationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OurLocationsScreen(),
      );
    },
    PaymentsDueDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaymentsDueDetailsScreen(),
      );
    },
    PaymentsDueRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaymentsDueScreen(),
      );
    },
    PdfPreviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PdfPreviewScreen(),
      );
    },
    PreviousOperationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PreviousOperationScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RechargeWalletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RechargeWalletScreen(),
      );
    },
    RecordStatementsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecordStatementsScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    RescheduleBookingRoute.name: (routeData) {
      final args = routeData.argsAs<RescheduleBookingRouteArgs>(
          orElse: () => const RescheduleBookingRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RescheduleBookingScreen(
          key: args.key,
          bookedInfo: args.bookedInfo,
        ),
      );
    },
    SchedulesRecordsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SchedulesRecordsScreen(),
      );
    },
    SelectDoctorAppointmentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SelectDoctorAppointmentScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    SickLeaveRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SickLeaveScreen(),
      );
    },
    SkinCareRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SkinCareScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    TabbyPaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabbyPaymentScreen(),
      );
    },
    TamaraPaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TamaraPaymentScreen(),
      );
    },
    TermsAndConditionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TermsAndConditionScreen(),
      );
    },
    TestResultDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TestResultDetailsRouteArgs>(
          orElse: () => const TestResultDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TestResultDetailsScreen(
          key: args.key,
          isRays: args.isRays,
          labData: args.labData,
        ),
      );
    },
    TestResultRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestResultScreen(),
      );
    },
    VaccinationsAndMedicaltionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VaccinationsAndMedicaltionsScreen(),
      );
    },
    VerificationCodeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<VerificationCodeRouteArgs>(
          orElse: () =>
              VerificationCodeRouteArgs(otpCode: pathParams.getInt('otp')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VerificationCodeScreen(
          key: args.key,
          otpCode: args.otpCode,
        ),
      );
    },
    WalletPaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WalletPaymentScreen(),
      );
    },
    WalletRechargeSuccessRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WalletRechargeSuccessScreen(),
      );
    },
    WalletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [AddCreditCardScreen]
class AddCreditCardRoute extends PageRouteInfo<void> {
  const AddCreditCardRoute({List<PageRouteInfo>? children})
      : super(
          AddCreditCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCreditCardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddFamilyMemberScreen]
class AddFamilyMemberRoute extends PageRouteInfo<void> {
  const AddFamilyMemberRoute({List<PageRouteInfo>? children})
      : super(
          AddFamilyMemberRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddFamilyMemberRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AnimatedCompletingBookingScreen]
class AnimatedCompletingBookingRoute
    extends PageRouteInfo<AnimatedCompletingBookingRouteArgs> {
  AnimatedCompletingBookingRoute({
    required DoctorData? doctorData,
    required String? selectedDate,
    required AppTime? selectedTime,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AnimatedCompletingBookingRoute.name,
          args: AnimatedCompletingBookingRouteArgs(
            doctorData: doctorData,
            selectedDate: selectedDate,
            selectedTime: selectedTime,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AnimatedCompletingBookingRoute';

  static const PageInfo<AnimatedCompletingBookingRouteArgs> page =
      PageInfo<AnimatedCompletingBookingRouteArgs>(name);
}

class AnimatedCompletingBookingRouteArgs {
  const AnimatedCompletingBookingRouteArgs({
    required this.doctorData,
    required this.selectedDate,
    required this.selectedTime,
    this.key,
  });

  final DoctorData? doctorData;

  final String? selectedDate;

  final AppTime? selectedTime;

  final Key? key;

  @override
  String toString() {
    return 'AnimatedCompletingBookingRouteArgs{doctorData: $doctorData, selectedDate: $selectedDate, selectedTime: $selectedTime, key: $key}';
  }
}

/// generated route for
/// [BookingSchedulesScreen]
class BookingSchedulesRoute extends PageRouteInfo<void> {
  const BookingSchedulesRoute({List<PageRouteInfo>? children})
      : super(
          BookingSchedulesRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingSchedulesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CardPaymentScreen]
class CardPaymentRoute extends PageRouteInfo<void> {
  const CardPaymentRoute({List<PageRouteInfo>? children})
      : super(
          CardPaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardPaymentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CardPaymentsDueScreen]
class CardPaymentsDueRoute extends PageRouteInfo<void> {
  const CardPaymentsDueRoute({List<PageRouteInfo>? children})
      : super(
          CardPaymentsDueRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardPaymentsDueRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChangeLanguageScreen]
class ChangeLanguageRoute extends PageRouteInfo<void> {
  const ChangeLanguageRoute({List<PageRouteInfo>? children})
      : super(
          ChangeLanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangeLanguageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ConfirmBookingScreen]
class ConfirmBookingRoute extends PageRouteInfo<void> {
  const ConfirmBookingRoute({List<PageRouteInfo>? children})
      : super(
          ConfirmBookingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmBookingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ConfirmOrderScreen]
class ConfirmOrderRoute extends PageRouteInfo<void> {
  const ConfirmOrderRoute({List<PageRouteInfo>? children})
      : super(
          ConfirmOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactUsScreen]
class ContactUsRoute extends PageRouteInfo<void> {
  const ContactUsRoute({List<PageRouteInfo>? children})
      : super(
          ContactUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardLayoutScreen]
class DashboardLayoutRoute extends PageRouteInfo<void> {
  const DashboardLayoutRoute({List<PageRouteInfo>? children})
      : super(
          DashboardLayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardLayoutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DoctorDetailsScreen]
class DoctorDetailsRoute extends PageRouteInfo<void> {
  const DoctorDetailsRoute({List<PageRouteInfo>? children})
      : super(
          DoctorDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditInsuranceProfileScreen]
class EditInsuranceProfileRoute extends PageRouteInfo<void> {
  const EditInsuranceProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditInsuranceProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditInsuranceProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExaminationsCartScreen]
class ExaminationsCartRoute extends PageRouteInfo<void> {
  const ExaminationsCartRoute({List<PageRouteInfo>? children})
      : super(
          ExaminationsCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExaminationsCartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExaminationsOfferDetailsScreen]
class ExaminationsOfferDetailsRoute
    extends PageRouteInfo<ExaminationsOfferDetailsRouteArgs> {
  ExaminationsOfferDetailsRoute({
    Key? key,
    OfferData? offerData,
    List<PageRouteInfo>? children,
  }) : super(
          ExaminationsOfferDetailsRoute.name,
          args: ExaminationsOfferDetailsRouteArgs(
            key: key,
            offerData: offerData,
          ),
          initialChildren: children,
        );

  static const String name = 'ExaminationsOfferDetailsRoute';

  static const PageInfo<ExaminationsOfferDetailsRouteArgs> page =
      PageInfo<ExaminationsOfferDetailsRouteArgs>(name);
}

class ExaminationsOfferDetailsRouteArgs {
  const ExaminationsOfferDetailsRouteArgs({
    this.key,
    this.offerData,
  });

  final Key? key;

  final OfferData? offerData;

  @override
  String toString() {
    return 'ExaminationsOfferDetailsRouteArgs{key: $key, offerData: $offerData}';
  }
}

/// generated route for
/// [ExaminationsOfferHomeScreen]
class ExaminationsOfferHomeRoute extends PageRouteInfo<void> {
  const ExaminationsOfferHomeRoute({List<PageRouteInfo>? children})
      : super(
          ExaminationsOfferHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExaminationsOfferHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FamilyAndRelativesScreen]
class FamilyAndRelativesRoute extends PageRouteInfo<void> {
  const FamilyAndRelativesRoute({List<PageRouteInfo>? children})
      : super(
          FamilyAndRelativesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FamilyAndRelativesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HelpScreen]
class HelpRoute extends PageRouteInfo<void> {
  const HelpRoute({List<PageRouteInfo>? children})
      : super(
          HelpRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InsuranceApprovalScreen]
class InsuranceApprovalRoute extends PageRouteInfo<void> {
  const InsuranceApprovalRoute({List<PageRouteInfo>? children})
      : super(
          InsuranceApprovalRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsuranceApprovalRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InsuranceCompanyScreen]
class InsuranceCompanyRoute extends PageRouteInfo<void> {
  const InsuranceCompanyRoute({List<PageRouteInfo>? children})
      : super(
          InsuranceCompanyRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsuranceCompanyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InsurancesScreen]
class InsurancesRoute extends PageRouteInfo<void> {
  const InsurancesRoute({List<PageRouteInfo>? children})
      : super(
          InsurancesRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsurancesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapDirectionsScreen]
class MapDirectionsRoute extends PageRouteInfo<MapDirectionsRouteArgs> {
  MapDirectionsRoute({
    Key? key,
    required LocationData? locationData,
    List<PageRouteInfo>? children,
  }) : super(
          MapDirectionsRoute.name,
          args: MapDirectionsRouteArgs(
            key: key,
            locationData: locationData,
          ),
          initialChildren: children,
        );

  static const String name = 'MapDirectionsRoute';

  static const PageInfo<MapDirectionsRouteArgs> page =
      PageInfo<MapDirectionsRouteArgs>(name);
}

class MapDirectionsRouteArgs {
  const MapDirectionsRouteArgs({
    this.key,
    required this.locationData,
  });

  final Key? key;

  final LocationData? locationData;

  @override
  String toString() {
    return 'MapDirectionsRouteArgs{key: $key, locationData: $locationData}';
  }
}

/// generated route for
/// [MedicalRecordScreen]
class MedicalRecordRoute extends PageRouteInfo<void> {
  const MedicalRecordRoute({List<PageRouteInfo>? children})
      : super(
          MedicalRecordRoute.name,
          initialChildren: children,
        );

  static const String name = 'MedicalRecordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyBillsScreen]
class MyBillsRoute extends PageRouteInfo<void> {
  const MyBillsRoute({List<PageRouteInfo>? children})
      : super(
          MyBillsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyBillsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OfferDetailsScreen]
class OfferDetailsRoute extends PageRouteInfo<OfferDetailsRouteArgs> {
  OfferDetailsRoute({
    Key? key,
    OfferData? offerData,
    List<PageRouteInfo>? children,
  }) : super(
          OfferDetailsRoute.name,
          args: OfferDetailsRouteArgs(
            key: key,
            offerData: offerData,
          ),
          initialChildren: children,
        );

  static const String name = 'OfferDetailsRoute';

  static const PageInfo<OfferDetailsRouteArgs> page =
      PageInfo<OfferDetailsRouteArgs>(name);
}

class OfferDetailsRouteArgs {
  const OfferDetailsRouteArgs({
    this.key,
    this.offerData,
  });

  final Key? key;

  final OfferData? offerData;

  @override
  String toString() {
    return 'OfferDetailsRouteArgs{key: $key, offerData: $offerData}';
  }
}

/// generated route for
/// [OffersCardPaymentScreen]
class OffersCardPaymentRoute extends PageRouteInfo<void> {
  const OffersCardPaymentRoute({List<PageRouteInfo>? children})
      : super(
          OffersCardPaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'OffersCardPaymentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OffersScreen]
class OffersRoute extends PageRouteInfo<void> {
  const OffersRoute({List<PageRouteInfo>? children})
      : super(
          OffersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OffersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OurLocationsScreen]
class OurLocationsRoute extends PageRouteInfo<void> {
  const OurLocationsRoute({List<PageRouteInfo>? children})
      : super(
          OurLocationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OurLocationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentsDueDetailsScreen]
class PaymentsDueDetailsRoute extends PageRouteInfo<void> {
  const PaymentsDueDetailsRoute({List<PageRouteInfo>? children})
      : super(
          PaymentsDueDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentsDueDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentsDueScreen]
class PaymentsDueRoute extends PageRouteInfo<void> {
  const PaymentsDueRoute({List<PageRouteInfo>? children})
      : super(
          PaymentsDueRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentsDueRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PdfPreviewScreen]
class PdfPreviewRoute extends PageRouteInfo<void> {
  const PdfPreviewRoute({List<PageRouteInfo>? children})
      : super(
          PdfPreviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'PdfPreviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PreviousOperationScreen]
class PreviousOperationRoute extends PageRouteInfo<void> {
  const PreviousOperationRoute({List<PageRouteInfo>? children})
      : super(
          PreviousOperationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreviousOperationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RechargeWalletScreen]
class RechargeWalletRoute extends PageRouteInfo<void> {
  const RechargeWalletRoute({List<PageRouteInfo>? children})
      : super(
          RechargeWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'RechargeWalletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecordStatementsScreen]
class RecordStatementsRoute extends PageRouteInfo<void> {
  const RecordStatementsRoute({List<PageRouteInfo>? children})
      : super(
          RecordStatementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecordStatementsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RescheduleBookingScreen]
class RescheduleBookingRoute extends PageRouteInfo<RescheduleBookingRouteArgs> {
  RescheduleBookingRoute({
    Key? key,
    PatientBookingInfo? bookedInfo,
    List<PageRouteInfo>? children,
  }) : super(
          RescheduleBookingRoute.name,
          args: RescheduleBookingRouteArgs(
            key: key,
            bookedInfo: bookedInfo,
          ),
          initialChildren: children,
        );

  static const String name = 'RescheduleBookingRoute';

  static const PageInfo<RescheduleBookingRouteArgs> page =
      PageInfo<RescheduleBookingRouteArgs>(name);
}

class RescheduleBookingRouteArgs {
  const RescheduleBookingRouteArgs({
    this.key,
    this.bookedInfo,
  });

  final Key? key;

  final PatientBookingInfo? bookedInfo;

  @override
  String toString() {
    return 'RescheduleBookingRouteArgs{key: $key, bookedInfo: $bookedInfo}';
  }
}

/// generated route for
/// [SchedulesRecordsScreen]
class SchedulesRecordsRoute extends PageRouteInfo<void> {
  const SchedulesRecordsRoute({List<PageRouteInfo>? children})
      : super(
          SchedulesRecordsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SchedulesRecordsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectDoctorAppointmentScreen]
class SelectDoctorAppointmentRoute extends PageRouteInfo<void> {
  const SelectDoctorAppointmentRoute({List<PageRouteInfo>? children})
      : super(
          SelectDoctorAppointmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectDoctorAppointmentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SickLeaveScreen]
class SickLeaveRoute extends PageRouteInfo<void> {
  const SickLeaveRoute({List<PageRouteInfo>? children})
      : super(
          SickLeaveRoute.name,
          initialChildren: children,
        );

  static const String name = 'SickLeaveRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SkinCareScreen]
class SkinCareRoute extends PageRouteInfo<void> {
  const SkinCareRoute({List<PageRouteInfo>? children})
      : super(
          SkinCareRoute.name,
          initialChildren: children,
        );

  static const String name = 'SkinCareRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabbyPaymentScreen]
class TabbyPaymentRoute extends PageRouteInfo<void> {
  const TabbyPaymentRoute({List<PageRouteInfo>? children})
      : super(
          TabbyPaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabbyPaymentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TamaraPaymentScreen]
class TamaraPaymentRoute extends PageRouteInfo<void> {
  const TamaraPaymentRoute({List<PageRouteInfo>? children})
      : super(
          TamaraPaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'TamaraPaymentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TermsAndConditionScreen]
class TermsAndConditionRoute extends PageRouteInfo<void> {
  const TermsAndConditionRoute({List<PageRouteInfo>? children})
      : super(
          TermsAndConditionRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsAndConditionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TestResultDetailsScreen]
class TestResultDetailsRoute extends PageRouteInfo<TestResultDetailsRouteArgs> {
  TestResultDetailsRoute({
    Key? key,
    bool? isRays,
    LabResultsData? labData,
    List<PageRouteInfo>? children,
  }) : super(
          TestResultDetailsRoute.name,
          args: TestResultDetailsRouteArgs(
            key: key,
            isRays: isRays,
            labData: labData,
          ),
          initialChildren: children,
        );

  static const String name = 'TestResultDetailsRoute';

  static const PageInfo<TestResultDetailsRouteArgs> page =
      PageInfo<TestResultDetailsRouteArgs>(name);
}

class TestResultDetailsRouteArgs {
  const TestResultDetailsRouteArgs({
    this.key,
    this.isRays,
    this.labData,
  });

  final Key? key;

  final bool? isRays;

  final LabResultsData? labData;

  @override
  String toString() {
    return 'TestResultDetailsRouteArgs{key: $key, isRays: $isRays, labData: $labData}';
  }
}

/// generated route for
/// [TestResultScreen]
class TestResultRoute extends PageRouteInfo<void> {
  const TestResultRoute({List<PageRouteInfo>? children})
      : super(
          TestResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestResultRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VaccinationsAndMedicaltionsScreen]
class VaccinationsAndMedicaltionsRoute extends PageRouteInfo<void> {
  const VaccinationsAndMedicaltionsRoute({List<PageRouteInfo>? children})
      : super(
          VaccinationsAndMedicaltionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'VaccinationsAndMedicaltionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VerificationCodeScreen]
class VerificationCodeRoute extends PageRouteInfo<VerificationCodeRouteArgs> {
  VerificationCodeRoute({
    Key? key,
    required int otpCode,
    List<PageRouteInfo>? children,
  }) : super(
          VerificationCodeRoute.name,
          args: VerificationCodeRouteArgs(
            key: key,
            otpCode: otpCode,
          ),
          rawPathParams: {'otp': otpCode},
          initialChildren: children,
        );

  static const String name = 'VerificationCodeRoute';

  static const PageInfo<VerificationCodeRouteArgs> page =
      PageInfo<VerificationCodeRouteArgs>(name);
}

class VerificationCodeRouteArgs {
  const VerificationCodeRouteArgs({
    this.key,
    required this.otpCode,
  });

  final Key? key;

  final int otpCode;

  @override
  String toString() {
    return 'VerificationCodeRouteArgs{key: $key, otpCode: $otpCode}';
  }
}

/// generated route for
/// [WalletPaymentScreen]
class WalletPaymentRoute extends PageRouteInfo<void> {
  const WalletPaymentRoute({List<PageRouteInfo>? children})
      : super(
          WalletPaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletPaymentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WalletRechargeSuccessScreen]
class WalletRechargeSuccessRoute extends PageRouteInfo<void> {
  const WalletRechargeSuccessRoute({List<PageRouteInfo>? children})
      : super(
          WalletRechargeSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRechargeSuccessRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WalletScreen]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute({List<PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
