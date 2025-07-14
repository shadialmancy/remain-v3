import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/authentication/data/models/pat_rel.dart';
import 'package:remain/src/features/authentication/data/models/patient_info.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/booking_details_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';
import '../../widgets/widgets.dart';

class ConfirmBookingUi extends ConsumerStatefulWidget {
  const ConfirmBookingUi({super.key});

  @override
  ConsumerState<ConfirmBookingUi> createState() => _ConfirmBookingUiState();
}

class _ConfirmBookingUiState extends ConsumerState<ConfirmBookingUi> {
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

  PatRel? _selectedPatient;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final bookingRef = ref.read(bookingDetailsServiceProvider.notifier);

    return AsyncValueWidget(
      value: ref.watch(bookingDetailsServiceProvider),
      data: (_) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.3.screenWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH24,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DoctorImage(
                        image: bookingRef
                            .getSelectedDoctor()
                            ?.doctorProfile
                            ?.experienceArb),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          _language == 'ar'
                              ? bookingRef.getSelectedDoctor()?.arbName ?? ''
                              : bookingRef.getSelectedDoctor()?.engName ?? '',
                          style: theme.titleSmall.copyWith(
                            color: theme.dark2E,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        gapH8,
                        Text(
                          _language == 'ar'
                              ? bookingRef
                                      .getSelectedDoctor()
                                      ?.specialityArbName ??
                                  ''
                              : bookingRef
                                      .getSelectedDoctor()
                                      ?.specialityEngName ??
                                  '',
                          style: theme.labelMedium.copyWith(
                            color: theme.grey8080,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                gapH24,
                Text(
                  l10n.bookingDetails,
                  style: theme.titleSmall.copyWith(
                    color: theme.dark2E,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                gapH16,
                BookingDetailsTile(
                  title: _language == 'ar'
                      ? bookingRef.getSelectedAvailability()?.dayNameArb ?? ''
                      : bookingRef.getSelectedAvailability()?.dayNameEng ?? '',
                  subtitle: bookingRef.getSelectedDate(),
                  leadingIcon: AssetsHelper.navbookIcon,
                  trailing: SizedBox(
                    width: 18.screenWidth,
                    child: RichText(
                      text: TextSpan(
                        text:
                            '${bookingRef.getSelectedTime()?.timeSlot?.split(' ')[1]} ${bookingRef.getSelectedTime()?.timeSlot?.split(' ')[2]}',
                        style: theme.titleSmall.copyWith(
                          color: theme.dark2E,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                gapH16,
                BookingDetailsTile(
                  title: bookingRef.getSelectedCenter(),
                  leadingIcon: AssetsHelper.locationIcon,
                ),
                gapH16,
                gapH16,
                AsyncValueWidget(
                    value: ref.watch(authUiServiceProvider),
                    data: (PatientInfo? patientInfo) {
                      // Set the selected patient from the first one if available
                      _selectedPatient = PatRel(
                        arbName: _language == 'ar'
                            ? patientInfo?.arbName
                            : patientInfo?.engName,
                        engName: _language == 'en'
                            ? patientInfo?.engName
                            : patientInfo?.arbName,
                        patID: patientInfo?.id,
                        id: patientInfo?.id, // Example fields
                      );

                      // Create a list of items for the dropdown
                      List<PatRel> dropdownItems = [
                        // Add the patientInfo as the first item
                        if (patientInfo != null)
                          PatRel(
                            arbName: _language == 'ar'
                                ? patientInfo.arbName
                                : patientInfo.engName,
                            engName: _language == 'en'
                                ? patientInfo.engName
                                : patientInfo.arbName,
                            patID: patientInfo.id,
                            id: patientInfo.id, // Example fields
                          ),
                        // Add the rest of the patRel items
                        ...?patientInfo?.patRel,
                      ];

                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: theme.greyD8,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          child: DropdownButtonFormField<PatRel>(
                            value: _selectedPatient,
                            style: theme.labelLarge.copyWith(
                              color: theme.dark2E,
                              fontWeight: FontWeight.w400,
                            ),
                            isExpanded: true,
                            hint: Text(
                              _selectedPatient == null
                                  ? _language == 'ar'
                                      ? patientInfo?.arbName ?? ''
                                      : patientInfo?.engName ?? ''
                                  : _language == 'ar'
                                      ? _selectedPatient?.arbName ?? ''
                                      : _selectedPatient?.engName ?? '',
                              style: theme.labelLarge.copyWith(
                                color: theme.dark2E,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            items: dropdownItems.map((PatRel value) {
                              return DropdownMenuItem<PatRel>(
                                value: value,
                                child: Text(
                                  _language == 'ar'
                                      ? value.arbName ?? ''
                                      : value.engName ?? '',
                                  style: theme.labelLarge.copyWith(
                                    color: theme.dark2E,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              );
                            }).toList(),
                            dropdownColor: Colors.white,
                            onChanged: (newValue) async {
                              if (newValue != null) {
                                // Update the selected patient
                                setState(() {
                                  _selectedPatient = newValue;
                                });
                              }
                            },
                            iconSize: 24,
                            isDense: true,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: theme.grey8080,
                            ),
                          ),
                        ),
                      );
                    }),
                gapH48,
                gapH32,
                PrimaryButton(
                  onPressed: () async {
                    if (_selectedPatient != null) {
                      bookingRef.setPatientData(_selectedPatient!);
                      ProgressDialog progressDialog =
                          ProgressDialog(context: context);
                      progressDialog.show(max: 100, msg: l10n.loading);
                      bool booked = await bookingRef.addBooking();
                      if (booked && context.mounted) {
                        Future.delayed(const Duration(seconds: 1), () {
                          progressDialog.close();
                          if (context.mounted) {
                            context.router.replaceAll([
                              AnimatedCompletingBookingRoute(
                                  doctorData: bookingRef.getSelectedDoctor(),
                                  selectedDate: bookingRef.getSelectedDate(),
                                  selectedTime: bookingRef.getSelectedTime())
                            ]);
                          }
                        });
                      }
                      progressDialog.close();
                    }
                  },
                  title: l10n.continuing,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
