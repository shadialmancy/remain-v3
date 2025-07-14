import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double ICON_OFF = -3;
const double ICON_ON = 0;
const double TEXT_OFF = 3;
const double TEXT_ON = 1;
const double ALPHA_OFF = 0;
const double ALPHA_ON = 1;
const int ANIM_DURATION = 300;

class CustomMotionTabItem extends StatefulWidget {
  final String? title;
  final bool selected;
  final String? iconData;
  final TextStyle textStyle;
  final Function callbackFunction;
  final Color tabIconColor;
  final double? tabIconSize;
  final Widget? badge;

  const CustomMotionTabItem({
    super.key,
    required this.title,
    required this.selected,
    required this.iconData,
    required this.textStyle,
    required this.tabIconColor,
    required this.callbackFunction,
    this.tabIconSize = 24,
    this.badge,
  });

  @override
  CustomMotionTabItemState createState() => CustomMotionTabItemState();
}

class CustomMotionTabItemState extends State<CustomMotionTabItem> {
  double iconYAlign = ICON_ON;
  double textYAlign = TEXT_OFF;
  double iconAlpha = ALPHA_ON;

  @override
  void initState() {
    super.initState();
    _setIconTextAlpha();
  }

  @override
  void didUpdateWidget(CustomMotionTabItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setIconTextAlpha();
  }

  void _setIconTextAlpha() {
    setState(() {
      iconYAlign = (widget.selected) ? ICON_OFF : ICON_ON;
      textYAlign = (widget.selected) ? TEXT_ON : TEXT_OFF;
      iconAlpha = (widget.selected) ? ALPHA_OFF : ALPHA_ON;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: AnimatedAlign(
              duration: const Duration(milliseconds: ANIM_DURATION),
              alignment: Alignment(0, textYAlign),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget.selected
                    ? Text(
                        widget.title!,
                        style: widget.textStyle,
                        softWrap: false,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      )
                    : const Text(''),
              ),
            ),
          ),
          InkWell(
            onTap: () => widget.callbackFunction(),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: AnimatedAlign(
                duration: const Duration(milliseconds: ANIM_DURATION),
                curve: Curves.easeIn,
                alignment: Alignment(0, iconYAlign),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: ANIM_DURATION),
                  opacity: iconAlpha,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        padding: const EdgeInsets.all(0),
                        alignment: const Alignment(0, 0),
                        icon: SvgPicture.asset(
                          widget.iconData ?? '',
                          // colorFilter: ColorFilter.mode(
                          //   widget.tabIconColor,
                          //   BlendMode.srcIn,
                          // ),
                          height: widget.tabIconSize,
                          width: widget.tabIconSize,
                        ),
                        onPressed: () => widget.callbackFunction(),
                      ),
                      widget.badge != null
                          ? Positioned(
                              top: 0,
                              right: 0,
                              child: widget.badge!,
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
