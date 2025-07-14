import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BulletTextPoints extends StatelessWidget {
  const BulletTextPoints({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• "),
        Expanded(
          child: Text(
            text,
            style: theme.bodySmall,
          ),
        ),
      ],
    );
  }
}
