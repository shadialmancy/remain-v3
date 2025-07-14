import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';
import '../../data/model/patient_prescription_dto/prescription_info.dart';

class MedicationContainer extends StatelessWidget {
  const MedicationContainer({super.key, required this.data});
  final PrescriptionInfo? data;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Container(
      padding: EdgeInsets.all(3.sw),
      decoration: BoxDecoration(
          color: theme.white,
          borderRadius: AppSizes.borderRadius16,
          boxShadow: [
            BoxShadow(
              color: theme.fullDark.withValues(alpha: 0.08),
              blurRadius: 4,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.medications,
            style: theme.bodySmall.copyWith(color: theme.fullDark),
          ),
          gapH16,
          Row(
            children: [
              Column(
                children: [
                  Text(
                    l10n.nameOfMedicine,
                    style: theme.labelMedium.copyWith(
                        color: theme.grey8080, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              gapW32,
              Column(
                children: [
                  Text(
                    l10n.dosage,
                    style: theme.labelMedium.copyWith(
                        color: theme.grey8080, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: theme.whiteF2,
            thickness: 1,
          ),
          gapH16,
          ListView(
              shrinkWrap: true,
              children: List.generate(
                2,
                (index) {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.sw, vertical: 2.sw),
                    margin: EdgeInsets.only(bottom: 1.5.sh),
                    decoration: BoxDecoration(
                        color: theme.white,
                        borderRadius: AppSizes.borderRadius8,
                        boxShadow: [
                          BoxShadow(
                              color: theme.fullDark.withValues(alpha: 0.1),
                              blurRadius: 4)
                        ]),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "انتينال",
                              style: theme.labelMedium.copyWith(
                                  color: theme.grey8080,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        gapW64,
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Text(
                                "3 اقراص قبل كل وجبة",
                                style: theme.labelMedium.copyWith(
                                    color: theme.grey8080,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )),
          gapH12,
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 55.sw,
              height: 10.sw,
              child: PrimaryButton(
                  onPressed: () {}, title: l10n.downloadTreatmentPlan),
            ),
          )
        ],
      ),
    );
  }
}
