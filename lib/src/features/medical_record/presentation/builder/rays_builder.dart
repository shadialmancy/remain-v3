import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/routes/app_router.dart';
import '../../domain/entities/entities.dart';
import '../providers/fetch_ray_result_provider.dart';
import '../widgets/widgets.dart';

class RaysBuilder extends ConsumerWidget {
  const RaysBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(fetchRayResultServiceProvider),
        data: (PatientLabResultsEntity? labResultEntity) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 1.5.sh),
            child: labResultEntity?.data?.isEmpty ?? true
                ? Center(
                    child: Text(
                    l10n.noDataAvailableNow,
                    style: theme.bodyMedium,
                  ))
                : Column(
                    children: List.generate(
                      labResultEntity?.data?.length ?? 0,
                      (index) {
                        return GestureDetector(
                            onTap: () {
                              context.router.push(TestResultDetailsRoute(
                                  isRays: true,
                                  labData: labResultEntity?.data?[index]));
                            },
                            child: TestResultContainer(
                                isRay: true,
                                data: labResultEntity?.data?[index]));
                      },
                    ),
                  ),
          );
        });
  }
}
