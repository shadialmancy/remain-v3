// ignore_for_file: strict_top_level_inference

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../dashboard/dashboard.dart';
import '../../features/booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';
import '../../features/booking_schedules/data/models/availability_time_slots_dto/app_time.dart';
import '../../features/booking_schedules/data/models/doctors_dto/doctor_data.dart';
import '../../features/maps/data/models/map_location_dto/location_data.dart';
import '../../features/medical_record/data/model/patient_lab_results_dto/lab_results_data.dart';
import '../../features/offers/data/models/offers_dto/offers_data.dart';
import '../../screens/screens.dart';
import '../constants/constants.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: OnboardingRoute.page,
        ),

        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: VerificationCodeRoute.page),
        //   RedirectRoute(path: '*', redirectTo: '/'),
        CustomRoute(
          page: DashboardLayoutRoute.page,
          //   initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            CustomRoute(page: HelpRoute.page),
            CustomRoute(
              page: SchedulesRecordsRoute.page,
            ),
            CustomRoute(
              page: HomeRoute.page,
            ),
            CustomRoute(
              page: FamilyAndRelativesRoute.page,
            ),
            CustomRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
        CustomRoute(
          page: SchedulesRecordsRoute.page,
        ),
        CustomRoute(
          page: SettingsRoute.page,
        ),
        CustomRoute(
          page: TermsAndConditionRoute.page,
        ),
        CustomRoute(
          page: ContactUsRoute.page,
        ),
        CustomRoute(
          page: ChangeLanguageRoute.page,
        ),
        CustomRoute(
          page: EditProfileRoute.page,
        ),
        CustomRoute(
          page: WalletRoute.page,
        ),
        CustomRoute(
          page: PreviousOperationRoute.page,
        ),
        CustomRoute(
          page: RechargeWalletRoute.page,
        ),
        CustomRoute(
          page: AddCreditCardRoute.page,
        ),
        CustomRoute(
          page: WalletRechargeSuccessRoute.page,
        ),
        CustomRoute(
          page: DoctorDetailsRoute.page,
        ),
        CustomRoute(
          page: SelectDoctorAppointmentRoute.page,
        ),
        CustomRoute(
          page: ConfirmBookingRoute.page,
        ),
        CustomRoute(
          page: AnimatedCompletingBookingRoute.page,
        ),
        CustomRoute(
          page: MedicalRecordRoute.page,
        ),
        CustomRoute(
          page: RecordStatementsRoute.page,
        ),
        CustomRoute(
          page: TestResultRoute.page,
        ),
        CustomRoute(
          page: TestResultDetailsRoute.page,
        ),
        CustomRoute(
          page: VaccinationsAndMedicaltionsRoute.page,
        ),
        CustomRoute(
          page: InsurancesRoute.page,
        ),
        CustomRoute(
          page: EditInsuranceProfileRoute.page,
        ),
        CustomRoute(
          page: InsuranceCompanyRoute.page,
        ),
        CustomRoute(
          page: InsuranceApprovalRoute.page,
        ),
        CustomRoute(
          page: SickLeaveRoute.page,
        ),
        CustomRoute(
          page: FamilyAndRelativesRoute.page,
        ),
        CustomRoute(
          page: AddFamilyMemberRoute.page,
        ),
        CustomRoute(
          page: PdfPreviewRoute.page,
        ),
        CustomRoute(
          page: RescheduleBookingRoute.page,
        ),
        CustomRoute(
          page: CardPaymentRoute.page,
        ),
        CustomRoute(
          page: WalletPaymentRoute.page,
        ),
        CustomRoute(
          page: OffersRoute.page,
        ),
        CustomRoute(
          page: OfferDetailsRoute.page,
        ),
        CustomRoute(page: CartRoute.page),
        CustomRoute(page: ConfirmOrderRoute.page),
        CustomRoute(page: TabbyPaymentRoute.page),
        CustomRoute(page: TamaraPaymentRoute.page),
        CustomRoute(page: OffersCardPaymentRoute.page),
        CustomRoute(page: SkinCareRoute.page),

        CustomRoute(page: MyBillsRoute.page),
        // CustomRoute(page: HomeCareServiceRoute.page),
        CustomRoute(page: ExaminationsOfferHomeRoute.page),
        CustomRoute(page: ExaminationsOfferDetailsRoute.page),
        CustomRoute(page: ExaminationsCartRoute.page),
        CustomRoute(page: PaymentsDueRoute.page),
        CustomRoute(
          page: OurLocationsRoute.page,
        ),
        CustomRoute(page: MapDirectionsRoute.page),
        CustomRoute(page: PaymentsDueDetailsRoute.page),
        CustomRoute(page: CardPaymentsDueRoute.page),
      ];
  Widget transition(context, animation, secondaryAnimation, child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    logger.i('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.i('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.i('Tab route re-visited: ${route.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    logger.i('Route popped: ${route.settings.name}');
  }
}
