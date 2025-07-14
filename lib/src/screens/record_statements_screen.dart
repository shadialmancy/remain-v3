import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/widgets/widgets.dart';
import '../features/medical_record/presentation/ui/record_statements_ui.dart';

@RoutePage()
class RecordStatementsScreen extends StatelessWidget {
  const RecordStatementsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: TransparentAppBar(
        title: Text(
          l10n.recordStatements,
          style: theme.titleMedium.copyWith(color: theme.dark48),
        ),
        centerTitle: true,
        color: theme.secondaryBackground,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const RecordStatementsUi(),
        tablet: const RecordStatementsUi(),
        desktop: const RecordStatementsUi(),
      ),
    );
  }
}
