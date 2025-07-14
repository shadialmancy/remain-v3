import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/constants.dart';
import '../../../home/widgets/widgets.dart';
import '../widgets/widgets.dart';

class HelpUi extends StatefulWidget {
  const HelpUi({super.key});

  @override
  State<HelpUi> createState() => _HelpUiState();
}

class _HelpUiState extends State<HelpUi> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Padding(
      padding: EdgeInsets.all(4.2.sw),
      child: Column(
        children: [
          CustomSearchTextField(
            controller: searchController,
            hint: l10n.search,
            onChanged: (value) {},
          ),
          gapH48,
          ChatItem(),
        ],
      ),
    );
  }
}
