import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/core/localization/locale_constants.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/speciality_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../home/widgets/widgets.dart';
import '../../widgets/widgets.dart';
import '../provider/doctor_service.dart';
import '../provider/search_specialty_provider.dart';

class BookingSchedulesUi extends ConsumerStatefulWidget {
  const BookingSchedulesUi({super.key});

  @override
  ConsumerState<BookingSchedulesUi> createState() => _BookingSchedulesUiState();
}

class _BookingSchedulesUiState extends ConsumerState<BookingSchedulesUi> {
  final TextEditingController searchController = TextEditingController();
  String _language = '';
  int _selectedSpeciality = 0;
  String _searchText = '';
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
    final specialityRef = ref.read(specialityServiceProvider.notifier);
    final doctorRef = ref.read(doctorServiceProvider.notifier);
    final searchDoctorRef = ref.read(searchSpecialtyServiceProvider.notifier);
    _selectedSpeciality = ref
                .read(specialityServiceProvider.notifier)
                .getSelectedSpecialityId() ==
            null
        ? 0
        : int.parse(ref
                .read(specialityServiceProvider.notifier)
                .getSelectedSpecialityId() ??
            '0');
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(AssetsHelper.squareIconImg),
        ),
        AsyncValueWidget(
            value: ref.watch(searchSpecialtyServiceProvider),
            data: (specialtiesList) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 5.3.screenWidth, vertical: 2.4.screenHeight),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: ChooseMedicalCenter(),
                          ),
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () {},
                            child:
                                SvgPicture.asset(AssetsHelper.notificationIcon),
                          ),
                        ],
                      ),
                      gapH16,
                      CustomSearchTextField(
                        hint: l10n.searchForSpecialty,
                        controller: searchController,
                        onChanged: (p0) {
                          setState(() {
                            _searchText = p0;
                          });
                          searchDoctorRef.onSearch(
                              lang: _language, value: _searchText);
                        },
                        filterEnable: const FilterWidget(),
                      ),
                      gapH24,
                      AsyncValueWidget(
                          value: ref.watch(specialityServiceProvider),
                          data: (_) {
                            if (specialtiesList == null) {
                              return const SizedBox();
                            }
                            return SizedBox(
                              height: 5.6.screenHeight,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: specialtiesList.length,
                                itemBuilder: (context, index) {
                                  logger.i(
                                      'selectedSpeciality: $_selectedSpeciality');
                                  final speciality = specialtiesList[index];
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 1.6.screenWidth),
                                    child: SpecialitiesCard(
                                      title: _language == 'ar'
                                          ? speciality?.arbName ?? ''
                                          : speciality?.engName ?? '',
                                      isSelected: _selectedSpeciality ==
                                          speciality?.specId?.toInt(),
                                      onTap: () async {
                                        setState(() {
                                          _selectedSpeciality =
                                              speciality?.specId?.toInt() ?? 0;
                                        });
                                        specialityRef.setSelectedSpecialityId(
                                            speciality?.specId?.toString() ??
                                                '');
                                        await doctorRef.getDoctors();
                                        searchDoctorRef.onSearch(
                                            lang: _language,
                                            value: _searchText);
                                      },
                                    ),
                                  );
                                },
                              ),
                            );
                          }),
                      gapH16,
                      AsyncValueWidget(
                          value: ref.watch(doctorServiceProvider),
                          data: (doctorEntity) {
                            if (specialtiesList?.isEmpty ?? true) {
                              return Text(
                                l10n.noDataAvailableNow,
                                style: theme.bodyMedium,
                              );
                            }
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: doctorEntity?.data?.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 1.2.screenHeight),
                                  child: DoctorsCard(
                                    doctorData: doctorEntity?.data?[index],
                                    isArabic: _language == 'ar',
                                    onTap: () {
                                      doctorRef.setSelectedDoctor(
                                          doctorEntity?.data?[index]);
                                      context.router
                                          .push(const DoctorDetailsRoute());
                                    },
                                  ),
                                );
                              },
                            );
                          }),
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
