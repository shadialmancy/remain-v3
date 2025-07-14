import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/widgets.dart';
import '../builder/builders.dart';
import '../providers/vaccinations_and_medication_tabbar_provider.dart';

class VaccinationAndMedicationUi extends ConsumerStatefulWidget {
  const VaccinationAndMedicationUi({super.key});

  @override
  ConsumerState<VaccinationAndMedicationUi> createState() =>
      _VaccinationAndMedicationUiState();
}

class _VaccinationAndMedicationUiState
    extends ConsumerState<VaccinationAndMedicationUi> {
  @override
  Widget build(BuildContext context) {
    // final vaccineAndMedicationService = ref.watch(vaccinationsAndMedicationTabbarServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(vaccinationsAndMedicationTabbarServiceProvider),
        data: (_) {
          return const Column(
            children: [
              // Padding(
              //   padding: EdgeInsets.only(left: 5.1.sw,right: 5.1.sw,top: 2.sh),
              //   child: const VaccinesAndMedicationTabBar(),
              // ),
              Expanded(
                child: MedicationsBuilder(),

                // PageView(
                //   controller: vaccineAndMedicationService.pageController,
                //   onPageChanged: (value) {
                //     vaccineAndMedicationService.onPageChange(value);
                //   },
                //   children: const [
                //     VaccinesBuilder(),
                //     MedicationsBuilder(),
                //   ],
                // ),
              )
            ],
          );
        });
  }
}
