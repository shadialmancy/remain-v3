import 'package:flutter/material.dart';
import 'package:remain/src/features/authentication/data/models/pat_rel.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';

class FamilyAndRelativesContainer extends StatelessWidget {
  const FamilyAndRelativesContainer({super.key, this.data, this.lang});
  final PatRel? data;
  final String? lang;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final dob = DateTime.parse(data?.dob ?? '');
    final dateNow = DateTime.now();
    final age = dateNow.year - dob.year;
    return Container(
      margin: EdgeInsets.only(bottom: 1.sh),
      padding: EdgeInsets.symmetric(horizontal: 4.sw, vertical: 2.sw),
      decoration: BoxDecoration(
          color: theme.greyFA,
          borderRadius: AppSizes.borderRadius8,
          boxShadow: [
            BoxShadow(
                color: theme.brightNavy.withValues(alpha: 0.10), blurRadius: 8)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.sw,
            width: 16.sw,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      AssetsHelper.doctorFrame,
                    ),
                    fit: BoxFit.fill),
                borderRadius: AppSizes.borderRadius8),
          ),
          gapW12,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang?.toLowerCase() == 'en'
                      ? data?.engName ?? ''
                      : data?.arbName ?? '',
                  style: theme.labelMedium
                      .copyWith(fontSize: 13, color: theme.dark2E),
                ),
                gapH8,
                Text(
                  data?.sex?.toLowerCase() == 'm' ? l10n.male : l10n.female,
                  style: theme.labelSmall.copyWith(color: theme.grey8080),
                ),
                gapH4,
                Text(
                  "$age ${l10n.years}",
                  style: theme.labelSmall.copyWith(color: theme.grey8080),
                ),
              ],
            ),
          ),
          // const Spacer(),
          // GestureDetector(
          //     onTap: () {
          //       context.router.push(const AddFamilyMemberRoute());
          //     },
          //     child: Icon(
          //       Icons.edit_outlined,
          //       color: theme.primary,
          //     ))
        ],
      ),
    );
  }
}
