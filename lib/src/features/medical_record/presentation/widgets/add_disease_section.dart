import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../authentication/widgets/widgets.dart';
import '../../data/model/disease_model.dart';
import '../providers/disease_provider.dart';

class AddDiseaseSection extends ConsumerStatefulWidget {
  const AddDiseaseSection({super.key});

  @override
  ConsumerState<AddDiseaseSection> createState() => _AddDiseaseSectionState();
}

class _AddDiseaseSectionState extends ConsumerState<AddDiseaseSection> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final diseaseService = ref.watch(diseaseServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(diseaseServiceProvider),
        data: (List<DiseaseModel> diseaseList) {
          return Column(
            children: [
              Column(
                children: List.generate(
                  diseaseList.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 2.sh),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            diseaseList[index].diseaseName ?? '',
                            style: theme.titleSmall.copyWith(
                                color: theme.dark2E,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                              onTap: () {
                                diseaseService
                                    .removeDisease(diseaseList[index]);
                                setState(() {});
                              },
                              child: SvgPicture.asset(AssetsHelper.closeIcon)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: AppSizes.borderRadius8,
                    border: Border.all(
                      color: theme.primary,
                    )),
                child: CustomButton(
                  width: double.infinity,
                  title: l10n.addDisease,
                  onPressed: () {
                    addDiseaseBottomSheet(context);
                  },
                  icon: Icon(
                    Icons.add,
                    color: theme.primary,
                  ),
                  titleStyle: theme.labelLargeSecondary.copyWith(
                      color: theme.primary, fontWeight: FontWeight.normal),
                  backgroundColor: Colors.transparent,
                ),
              )
            ],
          );
        });
  }

  void addDiseaseBottomSheet(BuildContext context) {
    final TextEditingController diseaseNameController = TextEditingController();
    final TextEditingController yearsOfInjuryController =
        TextEditingController();
    final (theme, l10n) = appSettingsRecord(context);
    final formKey = GlobalKey<FormState>();
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setStateBottomSheet) {
          return Form(
            key: formKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.sw, vertical: 2.sh),
              width: double.infinity,
              height: 42.sh,
              color: theme.greyFA,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.router.maybePop();
                    },
                    child: SvgPicture.asset(
                      AssetsHelper.closeIcon,
                    ),
                  ),
                  gapH4,
                  TitleWIthTextField(
                    title: l10n.diseaseName,
                    controller: diseaseNameController,
                    hint: l10n.writeNameOfDisease,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return l10n.pleaseEnterDiseaseName;
                      }
                      return null;
                    },
                  ),
                  gapH20,
                  Text(
                    l10n.yearsOfInjury,
                    style: theme.bodyMedium.copyWith(
                        color: theme.dark2E, fontWeight: FontWeight.w500),
                  ),
                  gapH12,
                  CustomTextField(
                    controller: yearsOfInjuryController,
                    hint: l10n.selectYearsOfInjury,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return l10n.pleaseSelectYearsOfInjury;
                      }
                      return null;
                    },
                    suffix: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: theme.darkText.withValues(alpha: 0.6),
                    ),
                    onTap: () async {
                      DateTime? selectedDate = await showDatePicker(
                        builder: (context, child) {
                          return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.light(
                                  primary: theme.primary,
                                  onPrimary: theme.white,
                                  onSurface: theme.dark40,
                                ),
                              ),
                              child: child!);
                        },
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      if (selectedDate != null) {
                        setStateBottomSheet(() {
                          yearsOfInjuryController.text =
                              "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}";
                        });
                        logger.d(
                            'Year of injury: ${yearsOfInjuryController.text}');
                      }
                    },
                    readOnly: true,
                    onChanged: (p0) {
                      setStateBottomSheet(() {});
                    },
                  ),
                  gapH20,
                  PrimaryButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          final DiseaseModel diseaseModel = DiseaseModel(
                              diseaseName: diseaseNameController.text,
                              yearsOfInjury: yearsOfInjuryController.text);
                          ref
                              .watch(diseaseServiceProvider.notifier)
                              .addDisease(diseaseModel);
                          context.router.maybePop();
                        }
                      },
                      title: l10n.save)
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
