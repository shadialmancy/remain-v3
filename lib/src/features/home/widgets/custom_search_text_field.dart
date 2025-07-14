import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/core/constants/app_sizes.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.hint,
    required this.controller,
    required this.onChanged,
    this.filterEnable,
  });
  final String hint;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Widget? filterEnable;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1E4DD9).withValues(alpha: 0.08),
            blurRadius: 16,
            spreadRadius: 0,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AssetsHelper.searchIcon)),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: theme.labelLarge.copyWith(
                  color: theme.grey8080,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          if (filterEnable != null) filterEnable ?? Container(),
        ],
      ),
    );
  }
}
