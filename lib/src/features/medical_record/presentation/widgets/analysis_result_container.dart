import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class AnalysisResultContainer extends StatelessWidget {
  const AnalysisResultContainer({super.key});
  final int value = 10;

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
            l10n.analysisResult,
            style: theme.bodySmall.copyWith(color: theme.fullDark),
          ),
          gapH16,
          Table(
            columnWidths: const {
              1: FlexColumnWidth(1.5),
            },
            children: [
              TableRow(children: [
                Text(
                  l10n.indicators,
                  style: theme.labelMedium.copyWith(
                      color: theme.grey8080, fontWeight: FontWeight.normal),
                ),
                Text(
                  l10n.measurementsValues,
                  style: theme.labelMedium.copyWith(
                      color: theme.grey8080, fontWeight: FontWeight.normal),
                ),
                Text(
                  l10n.result,
                  textAlign: TextAlign.end,
                  style: theme.labelMedium.copyWith(
                      color: theme.grey8080, fontWeight: FontWeight.normal),
                ),
              ]),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "سرعة الترسيب",
                          style: theme.labelMedium.copyWith(
                              color: theme.grey8080,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "$value/L",
                          style: theme.labelMedium.copyWith(
                              color: theme.grey8080,
                              fontWeight: FontWeight.normal),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 15.sw,
                          padding: EdgeInsets.all(1.sw),
                          decoration: BoxDecoration(
                              borderRadius: AppSizes.borderRadius16,
                              color: value < 10
                                  ? theme.redF6
                                  : value > 10
                                      ? theme.greenAE
                                      : theme.whiteF2),
                          child: Text('6.7',
                              style: theme.labelMedium.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: value < 10
                                      ? theme.redEC
                                      : value > 10
                                          ? theme.green47
                                          : theme.dark2E)),
                        )
                      ],
                    ),
                  );
                },
              )),
          gapH12,
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 50.sw,
              height: 10.sw,
              child: PrimaryButton(
                  onPressed: () {}, title: l10n.downloadTestResult),
            ),
          )
        ],
      ),
    );
  }
}
