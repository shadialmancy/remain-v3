import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/features/profile/presentation/widgets/widgets.dart';

class ProfileUi extends ConsumerWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(authUiServiceProvider),
        data: (patientInfo) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(5.1.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                patientInfo == null ? const SizedBox() : const ProfileHeader(),
                gapH20,
                patientInfo == null
                    ? const SizedBox()
                    : GridView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.3,
                          crossAxisCount: 2,
                          crossAxisSpacing: 3.sw,
                          mainAxisSpacing: 3.sw,
                        ),
                        children: [
                          InfoCard(
                            title: l10n.age,
                            value: '${patientInfo.age} ${l10n.year}',
                            icon: AssetsHelper.ageIcon,
                          ),
                          InfoCard(
                            title: l10n.gender,
                            value: patientInfo.sex?.toLowerCase() == 'm'
                                ? l10n.male
                                : l10n.female,
                            icon: AssetsHelper.genderIcon,
                          ),
                          InfoCard(
                            title: l10n.weight,
                            value:
                                '${patientInfo.vitalSigns?.weight} ${l10n.kg}',
                            icon: AssetsHelper.weightIcon,
                          ),
                          InfoCard(
                            title: l10n.height,
                            value:
                                '${patientInfo.vitalSigns?.height} ${l10n.cm}',
                            icon: AssetsHelper.heightIcon,
                          ),
                        ],
                      ),
                gapH12,
                patientInfo == null
                    ? ProfileItem(
                        icon: '',
                        iconWidget: Icon(
                          Icons.login,
                          color: theme.grey8080,
                        ),
                        title: l10n.login,
                        onTap: () {
                          context.router.replace(const LoginRoute());
                        },
                      )
                    : const SizedBox(),
                Column(
                  children: [
                    ProfileItem(
                      icon: AssetsHelper.medicalRecordIcon,
                      title: l10n.medicalRecord,
                      onTap: () {
                        if (patientInfo == null) {
                          AppToast.errorToast(l10n.youNeedToLoginFirst);
                          return;
                        }
                        context.router.push(const MedicalRecordRoute());
                      },
                    ),
                    gapH12,
                    ProfileItem(
                      icon: AssetsHelper.paymentsDueIcon,
                      title: l10n.payments,
                      onTap: () {
                        context.router.push(const PaymentsDueRoute());
                      },
                      //  iconWidget: SvgPicture.asset(
                      //   AssetsHelper.paymentsDueIcon,
                      //   width: 20,
                      //   colorFilter:
                      //       ColorFilter.mode(theme.grey8080, BlendMode.srcIn),
                      // ),
                    ),
                    gapH12,
                    ProfileItem(
                      icon: AssetsHelper.calendarDisabledIcon,
                      title: l10n.myAppointments,
                      onTap: () {
                        if (patientInfo == null) {
                          AppToast.errorToast(l10n.youNeedToLoginFirst);
                          return;
                        }
                        context.router.push(const SchedulesRecordsRoute());
                      },
                    ),
                    gapH12,
                    ProfileItem(
                      icon: AssetsHelper.billIcon,
                      title: l10n.myBills,
                      onTap: () {
                        if (patientInfo == null) {
                          AppToast.errorToast(l10n.youNeedToLoginFirst);
                          return;
                        }
                        context.router.push(const MyBillsRoute());
                      },
                      iconWidget: SvgPicture.asset(
                        AssetsHelper.billIcon,
                        width: 20,
                        colorFilter:
                            ColorFilter.mode(theme.grey8080, BlendMode.srcIn),
                      ),
                    ),
                    gapH12,
                    ProfileItem(
                      icon: AssetsHelper.walletIcon,
                      title: l10n.wallet,
                      onTap: () {
                        if (patientInfo == null) {
                          AppToast.errorToast(l10n.youNeedToLoginFirst);
                          return;
                        }
                        context.router.push(const WalletRoute());
                      },
                    ),
                    gapH12,
                    patientInfo == null
                        ? const SizedBox()
                        : ProfileItem(
                            icon: '',
                            iconWidget:
                                Icon(Icons.logout, color: theme.grey8080),
                            title: l10n.logout,
                            onTap: () {
                              ref.read(authUiServiceProvider.notifier).logout();
                              if (context.mounted) {
                                context.router.replace(const LoginRoute());
                              }
                            },
                          ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
