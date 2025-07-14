import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:remain/src/features/wallet/presentation/provider/check_patient_balance_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/routes/app_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/localization/locale_constants.dart';
import '../../../../core/widgets/widgets.dart';
import 'widgets.dart';

class WalletInfoContainer extends ConsumerStatefulWidget {
  const WalletInfoContainer({super.key});

  @override
  ConsumerState<WalletInfoContainer> createState() =>
      _WalletInfoContainerState();
}

class _WalletInfoContainerState extends ConsumerState<WalletInfoContainer> {
  String? lang;
  Future<void> init() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en' ? AppStrings.en : AppStrings.ar;
      });
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(authUiServiceProvider),
        data: (patientInfo) {
          return Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    AssetsHelper.backgroundWalletContainerIcon,
                    fit: BoxFit.fill,
                  )),
              Padding(
                padding: EdgeInsets.all(2.sw),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WalletInfo(
                            icon: AssetsHelper.walletUserIcon,
                            title: l10n.name,
                            value: lang == AppStrings.ar
                                ? patientInfo?.arbName ?? ''
                                : patientInfo?.engName ?? ''),
                        WalletInfo(
                            icon: AssetsHelper.walletInsuranceIcon,
                            title: l10n.fileMedicalNumber,
                            value: patientInfo?.fileNum.toString() ?? ''),
                      ],
                    ),
                    gapH48,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          l10n.totalBalance,
                          style: theme.labelMedium.copyWith(
                              fontWeight: FontWeight.normal,
                              color: theme.periwinkle),
                        ),
                        AsyncValueWidget(
                            value:
                                ref.watch(checkPatientBalanceServiceProvider),
                            data: (balance) {
                              return RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: balance.toString(),
                                    style: theme.displayLarge.copyWith(
                                        fontSize: 52,
                                        color: theme.greyFA,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: " ${l10n.sr}",
                                  style: theme.bodySmall.copyWith(
                                    color: theme.periwinkle,
                                  ),
                                )
                              ]));
                            }),
                      ],
                    ),
                    gapH16,
                    CustomButton(
                      height: 6.sh,
                      backgroundColor: theme.lightBlueBorderColor,
                      icon: Icon(
                        Icons.add_circle_outline_sharp,
                        color: theme.white,
                      ),
                      title: l10n.walletRecharge,
                      onPressed: () {
                        context.router.push(const RechargeWalletRoute());
                      },
                      titleStyle: theme.bodySmall.copyWith(
                        color: theme.greyFA,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}
