import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/constants.dart';

class AppStartupWidget extends ConsumerWidget {
  const AppStartupWidget(
      {super.key, required this.onLoaded, required this.appStartupProvider});
  final WidgetBuilder onLoaded;
  final AsyncNotifierProvider appStartupProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return appStartupState.when(
      // use an external widget builder to decide what to return
      data: (_) => onLoaded(context),
      loading: () => const AppStartupLoadingWidget(),
      error: (e, st) {
        log(e.toString());

        return AppStartupErrorWidget(
          message: e.toString(),
          onRetry: () {
            ref.invalidate(appStartupProvider);
          },
        );
      },
    );
  }
}

class AppStartupLoadingWidget extends StatelessWidget {
  const AppStartupLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class AppStartupErrorWidget extends StatelessWidget {
  const AppStartupErrorWidget(
      {super.key, required this.message, required this.onRetry});
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('An Error Occurred, pleaes try again later.',
                  style: Theme.of(context).textTheme.headlineSmall),
              gapH16,
              ElevatedButton(
                onPressed: onRetry,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
