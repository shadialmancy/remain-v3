import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/constants.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key,
      required this.hint,
      required this.onSearch,
      required this.controller});
  final String hint;
  final void Function(String)? onSearch;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return SizedBox(
      height: 32,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.5.sw),
            child: Icon(
              Icons.search,
              color: theme.bodySmallSecondary.color,
            ),
          ),
          hintText: hint,
          hintStyle: theme.bodySmallSecondary,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius4),
            borderSide: BorderSide(
              color: theme.borderGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius4),
            borderSide: BorderSide(
              color: theme.borderGrey,
            ),
          ),
        ),
        onChanged: onSearch,
      ),
    );
  }
}
