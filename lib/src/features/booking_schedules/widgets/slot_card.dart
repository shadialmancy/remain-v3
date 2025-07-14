import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class SlotCard extends StatelessWidget {
  const SlotCard({
    super.key,
    required this.time,
    required this.isSelected,
    required this.onTap,
  });
  final String time;
  final bool isSelected;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? theme.secondaryBorderColor : theme.greyFA,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: isSelected ? theme.primary : theme.greyD8,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            time,
            style: theme.labelMedium.copyWith(
              color: isSelected ? theme.primary : theme.grey8080,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
