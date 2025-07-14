import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../core/constants/adaptive.dart';
import '../core/helpers/assets_helper.dart';
import '../core/widgets/widgets.dart';
import '../features/payments/presentation/pages/card_payment_ui.dart';

@RoutePage()
class CardPaymentScreen extends StatelessWidget {
  const CardPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TransparentAppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 1.sh),
          child: Image.asset(
            AssetsHelper.splashLogo,
            width: 35.sw,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const CardPaymentsUi(),
        tablet: const CardPaymentsUi(),
        desktop: const CardPaymentsUi(),
      ),
    );
  }
}
