// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/doctor_service.dart';
import 'package:remain/src/features/skin_care/presentation/providers/skin_care_doctors_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import '../../../../l10n/generated/l10n.dart';
import '../../../core/constants/app_strings.dart';
import '../../booking_schedules/presentation/provider/medical_center_service.dart';
import '../../booking_schedules/presentation/provider/speciality_service.dart';

class ChooseMedicalCenter extends ConsumerStatefulWidget {
  const ChooseMedicalCenter({
    this.additionalFunction,
    this.color,
    super.key,
  });
  final Function()? additionalFunction;
  final Color? color;
  @override
  ChooseMedicalCenterState createState() => ChooseMedicalCenterState();
}

class ChooseMedicalCenterState extends ConsumerState<ChooseMedicalCenter> {
  String? selectedValue;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref
          .watch(medicalCenterServiceProvider.notifier)
          .addToCenterList(AppLocalizations.of(context));
      await ref
          .watch(medicalCenterServiceProvider.notifier)
          .getUserSelectedCenter();
      ref.watch(medicalCenterServiceProvider.notifier).currentCenterID == 0
          ? checkChosenMedicalCenter(context)
          : null;
      selectedValue =
          ref.watch(medicalCenterServiceProvider.notifier).currentCenter;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final medicalCenterService =
        ref.read(medicalCenterServiceProvider.notifier);
    medicalCenterService.addToCenterList(l10n);
    final listCenters = medicalCenterService.listOfCenters;
    // selectedValue = listCenters.first;
    return AsyncValueWidget(
        value: ref.watch(medicalCenterServiceProvider),
        data: (selectedCenter) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.center,
                style: theme.labelMedium.copyWith(
                  color: const Color(0xff808080),
                ),
              ),
              gapH4,
              Row(
                children: [
                  // Wrap the DropdownButtonFormField in a SizedBox to control its width
                  SizedBox(
                    width: 70.6
                        .screenWidth, // Specify the desired width for the dropdown
                    child: DropdownButtonFormField<String>(
                      value: selectedValue,
                      style: theme.titleSmall.copyWith(
                        color: theme.primary,
                        fontWeight: FontWeight.w400,
                      ),
                      isExpanded:
                          true, // Allow the dropdown items to expand within the available space
                      hint: Text(
                        l10n.chooseMedicalCenter,
                        style: theme.titleSmall.copyWith(
                          color: theme.primary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      items: listCenters.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: theme.titleSmall.copyWith(
                              color: widget.color ?? theme.primary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                      dropdownColor: Colors.white,
                      onChanged: (newValue) async {
                        setState(() {
                          selectedValue = newValue;
                        });
                        setState(() {
                          ref
                              .read(medicalCenterServiceProvider.notifier)
                              .currentCenter = newValue ?? '';
                          ref
                                  .read(medicalCenterServiceProvider.notifier)
                                  .currentCenterID =
                              int.parse(medicalCenterService.getCenterID(
                                  newValue, l10n));
                        });
                        await ref
                            .read(medicalCenterServiceProvider.notifier)
                            .setNewUserSelectedCenter(int.parse(
                                medicalCenterService.getCenterID(
                                    newValue, l10n)));
                        ref.invalidate(specialityServiceProvider);

                        ref.invalidate(doctorServiceProvider);
                        ref.invalidate(skinCareDoctorsServiceProvider);
                        widget.additionalFunction?.call();
                      },
                      iconSize: 24,
                      isDense: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: widget.color ?? theme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  void checkChosenMedicalCenter(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final medicalSerivce = ref.watch(medicalCenterServiceProvider.notifier);
    final medicalCenterService =
        ref.read(medicalCenterServiceProvider.notifier);
    int selectedCenterID = 0;
    String selectedCenter = '';
    showDialog(
      context: context,
      barrierColor: theme.dark2E.withValues(alpha: 0.6),
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setStateSB) {
          return AsyncValueWidget(
              value: ref.watch(medicalCenterServiceProvider),
              data: (currenetCenterID) {
                return AlertDialog(
                  backgroundColor: theme.whiteColor,
                  elevation: 0.0,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          l10n.youNeedtoSelectMedicalCenterFirstInOrderToViewTheAvailableData,
                          style: const TextStyle(
                            fontSize: AppSizes.p16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () async {
                          await medicalSerivce
                              .setNewUserSelectedCenter(selectedCenterID);
                          medicalSerivce.currentCenter = selectedCenter;
                          context.router.maybePop();
                        },
                      )
                    ],
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH12,
                      for (var item in medicalSerivce.listOfCenters)
                        RadioListTile(
                            title: Text(
                              item,
                              style: theme.titleSmall.copyWith(
                                fontWeight: FontWeight.w400,
                                fontFamily: AppStrings.arabicFont,
                              ),
                            ),
                            value: item.toString(),
                            groupValue: selectedCenter.toString(),
                            onChanged: (value) {
                              setStateSB(() {
                                selectedValue = value;
                                ref
                                    .read(medicalCenterServiceProvider.notifier)
                                    .currentCenter = value ?? '';
                                ref
                                        .read(medicalCenterServiceProvider.notifier)
                                        .currentCenterID =
                                    selectedCenterID = int.parse(
                                        medicalCenterService.getCenterID(
                                            value, l10n));
                              });
                              selectedCenter = item;
                              setState(() {});
                            })
                    ],
                  ),
                  actions: [
                    CustomButton(
                      width: double.infinity,
                      title: l10n.confirm,
                      onPressed: () async {
                        await medicalSerivce
                            .setNewUserSelectedCenter(selectedCenterID);
                        medicalSerivce.currentCenter = selectedCenter;
                        context.router.maybePop();
                        setState(() {});
                      },
                      titleStyle: theme.titleSmall.copyWith(
                        color: theme.white,
                        fontWeight: FontWeight.w700,
                      ),
                      isDisabled: selectedCenterID != 0 ? false : true,
                      backgroundColor: theme.primary,
                    ),
                  ],
                );
              });
        });
      },
    );
  }
}
