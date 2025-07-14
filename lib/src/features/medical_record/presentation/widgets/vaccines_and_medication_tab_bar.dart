import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/medical_record/presentation/providers/vaccinations_and_medication_tabbar_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class VaccinesAndMedicationTabBar extends ConsumerStatefulWidget {
  const VaccinesAndMedicationTabBar({super.key});

  @override
  ConsumerState<VaccinesAndMedicationTabBar> createState() =>
      _VaccinesAndMedicationTabBarState();
}

class _VaccinesAndMedicationTabBarState
    extends ConsumerState<VaccinesAndMedicationTabBar> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .watch(vaccinationsAndMedicationTabbarServiceProvider.notifier)
          .currentIndex = 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final vaccineAndMedicationService =
        ref.watch(vaccinationsAndMedicationTabbarServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(vaccinationsAndMedicationTabbarServiceProvider),
        data: (currentIndex) {
          return Container(
              padding: EdgeInsets.symmetric(horizontal: 2.sw, vertical: 0.5.sh),
              decoration: BoxDecoration(
                color: theme.greyFA,
                border: Border.all(color: theme.whiteF2),
                borderRadius: AppSizes.borderRadius4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        vaccineAndMedicationService.onPageChange(0);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 2.sw),
                        decoration: currentIndex == 0
                            ? BoxDecoration(
                                color: theme.primary,
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          theme.blue15.withValues(alpha: 0.20),
                                      blurRadius: 20,
                                      offset: const Offset(4, 4))
                                ],
                                borderRadius: AppSizes.borderRadius4)
                            : null,
                        child: Text(
                          l10n.vaccinations,
                          style: currentIndex == 0
                              ? theme.labelMedium.copyWith(
                                  color: theme.primaryBackground,
                                  fontWeight: FontWeight.w600)
                              : theme.labelMedium.copyWith(
                                  color: theme.grey99,
                                  fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        vaccineAndMedicationService.onPageChange(1);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 2.sw),
                        decoration: currentIndex == 1
                            ? BoxDecoration(
                                color: theme.primary,
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          theme.blue15.withValues(alpha: 0.20),
                                      blurRadius: 20,
                                      offset: const Offset(4, 4))
                                ],
                                borderRadius: AppSizes.borderRadius4)
                            : null,
                        child: Text(
                          l10n.medications,
                          style: currentIndex == 1
                              ? theme.labelMedium.copyWith(
                                  color: theme.primaryBackground,
                                  fontWeight: FontWeight.w600)
                              : theme.labelMedium.copyWith(
                                  color: theme.grey99,
                                  fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
