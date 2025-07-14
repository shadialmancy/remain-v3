// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/constants/app_strings.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/selected_doctor_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';
import '../../../core/localization/localizations.dart';
import '../../../core/widgets/widgets.dart';
import '../data/models/doctors_dto/doctor_data.dart';

class AboutDoctor extends ConsumerStatefulWidget {
  const AboutDoctor({super.key});

  @override
  ConsumerState<AboutDoctor> createState() => _AboutDoctorState();
}

class _AboutDoctorState extends ConsumerState<AboutDoctor> {
  String _language = '';
  Future<void> getAppLocale() async {
    _language = await getLocale().then((value) {
      return value.languageCode;
    });
  }

  @override
  void initState() {
    getAppLocale();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.greyFA,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff6888e617).withValues(alpha: 0.09),
            spreadRadius: 0,
            blurRadius: 24.5,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 5.3.screenWidth, vertical: 2.4.screenHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AsyncValueWidget(
                value: ref.watch(selectedDoctorServiceProvider),
                loading: () => const SizedBox(),
                data: (DoctorData? doctorData) {
                  if (doctorData == null) {
                    return const SizedBox();
                  }
                  if (doctorData.doctorProfile?.certificatesArb == null) {
                    return const SizedBox();
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.aboutDoctor,
                        style: theme.titleSmall.copyWith(
                          color: theme.dark2E,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      gapH8,
                      Html(
                        data: _language == 'ar'
                            ? doctorData.doctorProfile?.certificatesArb ?? ''
                            : doctorData.doctorProfile?.certificatesEng ?? '',
                        style: {
                          'body': Style(
                              fontSize: FontSize(12),
                              color: theme.grey8080,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppStrings.arabicFont),
                        },
                      ),
                    ],
                  );
                }),
            //   gapH20,
            // Text(
            //   l10n.workTime,
            //   style: theme.titleSmall.copyWith(
            //     color: theme.dark2E,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            // gapH8,
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemCount: 2,
            //   itemBuilder: (context, index) {
            //     return Padding(
            //       padding: EdgeInsets.symmetric(vertical: 0.9.screenHeight),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           SvgPicture.asset(AssetsHelper.clockIcon),
            //           gapW8,
            //           Text(
            //             '9:00 AM - 5:00 PM',
            //             style: theme.labelLarge.copyWith(
            //               color: theme.grey8080,
            //               fontWeight: FontWeight.w400,
            //             ),
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            // ),
            // gapH12,
            AsyncValueWidget(
                value: ref.watch(selectedDoctorServiceProvider),
                data: (DoctorData? doctorData) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.consultationPrice,
                        style: theme.titleSmall.copyWith(
                          color: theme.primaryText,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: doctorData?.serviceInfo?.servicePrice
                                  .toString() ??
                              '',
                          style: theme.titleSmall.copyWith(
                            color: theme.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                          children: [
                            TextSpan(
                              text: ' ${l10n.sar}',
                              style: theme.labelMedium.copyWith(
                                color: theme.secondaryText,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
            //gapH48,
//Spacer(),
          ],
        ),
      ),
    );
  }
}
