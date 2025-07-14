import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../errors/custom_error.dart';

extension BuildContextX on BuildContext {
  RoutingController? get firstChildRouter =>
      router.childControllers.firstOrNull;

  List<String> get currentListedChildren =>
      router.matcher.collection.routes.toList().map((e) => e.name).toList();

  bool isNotEmptyNestedRoute(String emptyRouteName) =>
      router.current.name != emptyRouteName &&
      currentListedChildren.contains(router.current.name);

  void navigateToFirstParent() {
    if (currentListedChildren.isEmpty) {
      throw CustomError(
        'No parent route found',
        stackTrace: StackTrace.current,
      );
    }
    router.navigateNamed(router.stack.first.name!);
  }

  // snackbar
  void showSnackBar({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
      ),
    );
  }
}
