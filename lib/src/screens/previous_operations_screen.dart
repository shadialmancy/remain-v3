import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:remain/src/features/wallet/presentation/ui/previous_operations_ui.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class PreviousOperationScreen extends StatelessWidget {
  const PreviousOperationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        title: Text(
          l10n.previousOperations,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const PreviousOperationsUi(),
        tablet: const PreviousOperationsUi(),
        desktop: const PreviousOperationsUi(),
      ),
    );
  }
}
