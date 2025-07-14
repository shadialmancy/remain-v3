import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/session_manager.dart';
import '../../../../core/routes/app_router.dart';

class SplashUi extends StatefulWidget {
  const SplashUi({super.key});

  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {
  Future<void> _navigationTimer() async {
    Timer(const Duration(seconds: 2), () async {
      bool boardingVisit = await sessionManager.getBoardingVisitState();
      if (mounted) {
        if (boardingVisit) {
          context.router.replace(const DashboardLayoutRoute());
        } else {
          context.router.replace(const OnboardingRoute());
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _navigationTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AssetsHelper.splashLogo,
        width: 300,
        height: 300,
      ),
    );
  }
}
