import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/localization/locale_constants.dart';
import '../providers/fetch_prescription_provider.dart';
import '../widgets/widgets.dart';

class MedicationsBuilder extends ConsumerStatefulWidget {
  const MedicationsBuilder({super.key});

  @override
  ConsumerState<MedicationsBuilder> createState() => _MedicationsBuilderState();
}

class _MedicationsBuilderState extends ConsumerState<MedicationsBuilder> {
  String lang = '';

  Future<void> getAppLocale() async {
    await getLocale().then((value) {
      lang = value.languageCode.toLowerCase();
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    getAppLocale();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(fetchPrescriptionServiceProvider),
        data: (patientPrescriptionEntity) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 1.5.sh),
            child: patientPrescriptionEntity?.data?.isEmpty ?? true
                ? Center(
                    child: Text(
                    l10n.noDataAvailableNow,
                    style: theme.bodyMedium,
                  ))
                : Column(
                    children: List.generate(
                    patientPrescriptionEntity?.data?.length ?? 0,
                    (index) {
                      return Column(
                        children: [
                          PrescriptionContainer(
                            data: patientPrescriptionEntity?.data?[index],
                            lang: lang,
                          ),
                          gapH16,
                        ],
                      );
                    },
                  )),
          );
        });
  }
}
