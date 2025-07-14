import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/widgets.dart';

class VaccinesBuilder extends StatelessWidget {
  const VaccinesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SingleChildScrollView(
        padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 1.5.sh),
        child: Column(
          children: List.generate(
            2,
            (index) {
              return const VaccineContainer(
                isVerified: true,
              );
            },
          ),
        ),
      );
    });
  }
}
