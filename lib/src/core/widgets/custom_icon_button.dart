import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.backgroundColor = Colors.white,
    required this.icon,
    this.color,
    this.padding = 0,
    this.height = 40,
    this.border = true,
    this.width = 40,
    this.function,
  });

  final Color? backgroundColor;

  /// [color] color of the icon
  final Color? color;

  /// [function] a function that will execute after pressing the icon
  final VoidCallback? function;
  final double padding;
  final double width;
  final bool border;
  final double height;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: backgroundColor ?? Colors.black,
        border: border
            ? Border.all(
                color: Colors.black,
                width: 1,
              )
            : null,
      ),
    );
  }
}
