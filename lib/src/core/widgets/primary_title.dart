import 'package:flutter/material.dart';
import '../constants/constants.dart';

class PrimaryTitle extends StatelessWidget {
  const PrimaryTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Text(
      title,
      style: theme.bodyLarge.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
