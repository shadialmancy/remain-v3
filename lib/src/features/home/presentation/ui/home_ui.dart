import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/features/home/providers/home_user_vitals_service.dart';
import 'package:remain/src/features/home/providers/user_payments_due_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../medical_record/presentation/providers/test_result_tabbar_provider.dart';
import '../../providers/home_services_prov.dart';
import '../../widgets/settings_widget.dart';
import '../../widgets/widgets.dart';

class HomeUi extends ConsumerStatefulWidget {
  const HomeUi({super.key});

  @override
  ConsumerState<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends ConsumerState<HomeUi> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final testResultService =
        ref.watch(testResultTabbarServiceProvider.notifier);
    return Stack(
      children: [
        Positioned(
            top: 0, left: 0, child: Image.asset(AssetsHelper.squareIconImg)),
        RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(homeUserVitalsServiceProvider);
            await ref.watch(homeUserVitalsServiceProvider.future);
            await ref.read(homeServicesProvProvider.notifier).refresh();
            await ref.read(userPaymentsDueServiceProvider.future);
            setState(() {});
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // gapH12,
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(AssetsHelper.rtlLogo),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 3.3.screenWidth),
                      child: SettingsWidget(),
                    ),
                  ],
                ),
                gapH16,
                UserVitalsWidget(),
                gapH16,
                LifeCareBannerCard(),
                gapH16,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
                  child: GridView.extent(
                    maxCrossAxisExtent: 25.9.screenWidth,
                    crossAxisSpacing: 5.3.screenWidth,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ServiceCard(
                        title: l10n.xrayResults,
                        icon: AssetsHelper.homeXrayIcon,
                        onTap: () {
                          testResultService.setCurrentIndex(1);
                          context.router.push(const TestResultRoute());
                        },
                      ),
                      ServiceCard(
                        title: l10n.analysisResults,
                        icon: AssetsHelper.homeTestResultIcon,
                        onTap: () {
                          testResultService.setCurrentIndex(0);
                          context.router.push(const TestResultRoute());
                        },
                      ),
                      ServiceCard(
                        title: l10n.insuranceApprovals,
                        icon: AssetsHelper.homeInsuranceIcon,
                        onTap: () {
                          context.router.push(const InsuranceApprovalRoute());
                        },
                      ),
                      ServiceCard(
                        title: l10n.pharmacy,
                        icon: AssetsHelper.homePharmacyIcon,
                        onTap: () {},
                      ),
                      ServiceCard(
                        title: l10n.medicalReports,
                        icon: AssetsHelper.homeMedicalReportIcon,
                        onTap: () {
                          context.router.push(const MedicalRecordRoute());
                        },
                      ),
                      ServiceCard(
                        title: l10n.homeCare,
                        icon: AssetsHelper.homeHomeIcon,
                        onTap: () {},
                      ),
                      ServiceCard(
                        title: l10n.sickLeaves,
                        icon: AssetsHelper.homeSickLeavesIcon,
                        onTap: () {
                          context.router.push(const SickLeaveRoute());
                        },
                      ),
                      ServiceCard(
                        title: l10n.appleWatch,
                        icon: AssetsHelper.homeWatchIcon,
                        onTap: () {},
                        isComingSoon: true,
                      ),
                      ServiceCard(
                        title: l10n.ourLocations,
                        icon: AssetsHelper.homeLocationIcon,
                        onTap: () {
                          context.router.push(OurLocationsRoute());
                        },
                      ),
                    ],
                  ),
                ),
                gapH16,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
                  child: HomeOffersCard(),
                ),
                gapH20,
                HomeConsultations(),
                //gapH20,
                AsyncValueWidget(
                    value: ref.watch(userPaymentsDueServiceProvider),
                    data: (userPaymentsDue) {
                      final paymentsDue = userPaymentsDue?.data;
                      if (paymentsDue == null || paymentsDue.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          padding: EdgeInsets.all(3.2.screenWidth),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    l10n.paymentsDue,
                                    style: theme.titleSmall.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  CustomButton(
                                    onPressed: () {
                                      context
                                          .pushRoute(const PaymentsDueRoute());
                                    },
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: BorderSide(
                                        color: theme.primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    title: l10n.viewAll,
                                    titleStyle: theme.labelSmall.copyWith(
                                      color: theme.primary,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    width: 24.3.screenWidth,
                                    height: 4.4.screenHeight,
                                  ),
                                ],
                              ),
                              gapH12,
                              PaymentsDueCard(
                                  userPaymentsDue: paymentsDue.first),
                            ],
                          ),
                        ),
                      );
                    }),
                gapH32,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
