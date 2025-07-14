import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../data/model/patient_insurance_dto/insurance_info.dart';

class InsuranceContainer extends StatelessWidget {
  const InsuranceContainer({super.key, this.data});
  final InsuranceInfo? data;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final dateTime =
        DateFormat('dd-MM-yyyy').format(DateTime.parse(data?.expierDate ?? ''));
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 2.sh),
      decoration: BoxDecoration(
        color: theme.greyFA,
        borderRadius: AppSizes.borderRadius8,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 4.sw, vertical: 1.5.sh),
            decoration: BoxDecoration(
              color: theme.primary,
              borderRadius: const BorderRadius.only(
                  topLeft: AppSizes.radius8, topRight: AppSizes.radius8),
            ),
            child: Text(
              data?.insuranceCompany ?? '',
              style: theme.bodyMediumSecondary.copyWith(color: theme.whiteF6),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.sw, vertical: 1.sh),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 4.sw,
                  backgroundColor: theme.primary,
                  child: Icon(
                    Icons.business,
                    size: 4.sw,
                    color: theme.whiteF6,
                  ),
                ),
                gapW16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data?.insuranceCompany ?? '',
                        style: theme.bodyLargeSecondary
                            .copyWith(color: theme.primary),
                      ),
                      Text(
                        dateTime,
                        style: theme.labelMedium.copyWith(
                            color: theme.grey8080,
                            fontWeight: FontWeight.normal),
                      ),
                      gapH8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(AssetsHelper.hospitalIcon),
                              gapW8,
                              Text(
                                data?.datumClass ?? '',
                                style: theme.labelMedium.copyWith(
                                    color: theme.dark2E,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          //  SvgPicture.asset(AssetsHelper.editInsuranceCompanyIcon)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
