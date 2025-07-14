import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';

class SpecialitiesCard extends StatefulWidget {
  const SpecialitiesCard({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });
  final String title;
  final Function() onTap;
  final bool isSelected;
  @override
  State<SpecialitiesCard> createState() => _SpecialitiesCardState();
}

class _SpecialitiesCardState extends State<SpecialitiesCard> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return InkWell(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.isSelected ? theme.primary : theme.greyFA,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: widget.isSelected ? Colors.transparent : theme.greyD8,
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: const Color(0xff15379A).withOpacity(0.20),
          //     spreadRadius: 0,
          //     blurRadius: 20,
          //     offset: const Offset(4, 4),
          //   ),
          // ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 2.1.screenWidth, vertical: 0.9.screenHeight),
          child: Text(
            widget.title,
            style: theme.labelMedium.copyWith(
              color: widget.isSelected ? theme.primaryBackground : theme.grey99,
              fontWeight: widget.isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
