import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/skin_care/presentation/providers/skin_care_doctors_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../booking_schedules/presentation/provider/doctor_service.dart';
import '../../../booking_schedules/widgets/widgets.dart';

class SkinCareUi extends ConsumerStatefulWidget {
  const SkinCareUi({super.key});

  @override
  ConsumerState<SkinCareUi> createState() => _SkinCareUiState();
}

class _SkinCareUiState extends ConsumerState<SkinCareUi> {
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
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(AssetsHelper.squareIconImg),
        ),
        RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(skinCareDoctorsServiceProvider);
            setState(() {});
          },
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: AsyncValueWidget(
                value: ref.watch(skinCareDoctorsServiceProvider),
                data: (doctors) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH12,
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 1.2.screenHeight,
                          horizontal: 4.3.screenWidth,
                        ),
                        child: Text(
                          l10n.drSaeedForSkinCareAndDermatology,
                          style: theme.labelMedium.copyWith(
                            color: theme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      gapH12,
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: doctors?.data?.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.2.screenHeight,
                                horizontal: 4.3.screenWidth),
                            child: DoctorsCard(
                              doctorData: doctors?.data?[index],
                              isArabic: _language == 'ar',
                              onTap: () {
                                ref
                                    .read(doctorServiceProvider.notifier)
                                    .setSelectedDoctor(doctors?.data?[index]);
                                context.router.push(const DoctorDetailsRoute());
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  );
                }),
          ),
        ),
      ],
    );
  }
}
