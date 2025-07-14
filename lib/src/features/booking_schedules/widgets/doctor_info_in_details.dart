import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/themes/themes.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/selected_doctor_service.dart';
import 'package:remain/src/features/booking_schedules/widgets/doctor_image.dart';
import 'package:remain/src/features/booking_schedules/widgets/read_more_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';
import '../../../core/localization/localizations.dart';
import '../data/models/doctors_dto/doctor_data.dart';

class DoctorInfoInDetails extends ConsumerStatefulWidget {
  const DoctorInfoInDetails({super.key});
  @override
  ConsumerState<DoctorInfoInDetails> createState() =>
      _DoctorInfoInDetailsState();
}

class _DoctorInfoInDetailsState extends ConsumerState<DoctorInfoInDetails> {
  String _language = '';
  Future<void> getAppLocale() async {
    _language = await getLocale().then((value) {
      return value.languageCode;
    });
    setState(() {});
  }

  @override
  void initState() {
    getAppLocale();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(selectedDoctorServiceProvider),
        data: (DoctorData? doctorData) {
          if (doctorData == null) {
            return const SizedBox();
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DoctorImage(
                          image: doctorData.doctorProfile?.experienceArb),
                      gapW16,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _language == 'ar'
                                ? doctorData.arbName ?? ''
                                : doctorData.engName ?? '',
                            style: theme.titleSmall.copyWith(
                              color: theme.dark2E,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          gapH8,
                          SizedBox(
                            width: 50.screenWidth,
                            child: ReadMoreWidget(
                              text: _language == 'ar'
                                  ? doctorData.specialityArbName ?? ''
                                  : doctorData.specialityEngName ?? '',
                            ),
                          ),
                          gapH8,
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: theme.primary,
                                size: 14,
                              ),
                              gapW8,
                              Text(
                                doctorData.stars?.toString() ?? '',
                                style: theme.labelMedium.copyWith(
                                  color: theme.primary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //  SvgPicture.asset(AssetsHelper.saudiArabiaFlagIcon),
                    ],
                  ),
                  gapH12,
                  Row(
                    children: [
                      _infoCard(
                        icon: AssetsHelper.expIcon,
                        title: l10n.experience,
                        value: '5',
                        ext: l10n.years,
                        theme: theme,
                      ),
                      gapW8,
                      _infoCard(
                        icon: AssetsHelper.patientsIcon,
                        title: l10n.patients,
                        value: doctorData.rates?.toString() ?? '',
                        ext: l10n.patient,
                        theme: theme,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        });
  }
}

Widget _infoCard(
    {String? icon,
    String? title,
    String? value,
    String? ext,
    FlutterFlowTheme? theme}) {
  return Container(
    width: 43.5.screenWidth,
    decoration: BoxDecoration(
      color: theme?.greyFA,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: theme?.secondaryBorderColor ?? Colors.transparent,
        width: 1,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: 1.2.screenHeight, horizontal: 3.2.screenWidth),
      child: Row(
        children: [
          SvgPicture.asset(
            icon ?? '',
          ),
          gapW8,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? '',
                style: theme?.labelMedium.copyWith(
                  color: theme.grey8080,
                  fontWeight: FontWeight.w400,
                ),
              ),
              gapH4,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: value ?? '',
                      style: theme?.labelLarge.copyWith(
                        color: theme.dark2E,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TextSpan(
                      text: '\t',
                    ),
                    TextSpan(
                      text: ext ?? '',
                      style: theme?.labelLarge.copyWith(
                        color: theme.dark2E,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
