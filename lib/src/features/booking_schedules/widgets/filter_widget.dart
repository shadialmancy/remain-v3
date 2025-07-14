import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../components/filter_sheet.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.5.screenWidth),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            useRootNavigator: true,
            isScrollControlled: true,
            builder: (context) {
              return const FilterSheet();
            },
          );
        },
        child: SvgPicture.asset(AssetsHelper.filterIcon),
      ),
    );
  }
}
