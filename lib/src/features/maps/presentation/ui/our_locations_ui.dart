import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/maps/presentation/provider/map_location_provider.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/map_location_entity.dart';
import '../widgets/location_card_widget.dart';

class OurLocationsUi extends ConsumerWidget {
  const OurLocationsUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(mapLocationServiceProvider),
        data: (MapLocationEntity? locationEntity) {
          if (locationEntity?.data?.isEmpty ?? true) {
            return Center(
              child: Text(l10n.noDataAvailableNow),
            );
          }
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: locationEntity?.data?.length ?? 0,
            separatorBuilder: (context, index) => Divider(
              color: theme.grey8080.withValues(alpha: 0.3),
              height: 1,
            ),
            itemBuilder: (context, index) {
              return LocationCardWidget(
                locationData: locationEntity?.data?[index],
              );
            },
          );
        });
  }
}
