import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:motion_tab_bar/helpers/HalfClipper.dart';
import 'package:motion_tab_bar/helpers/HalfPainter.dart';

import '../src/core/localization/localizations.dart';
import 'custom_tab_item.dart';

typedef MotionTabBuilder = Widget Function();

class CustomMotionTabBar extends StatefulWidget {
  final Color? tabIconColor,
      tabIconSelectedColor,
      tabSelectedColor,
      tabBarColor;
  final double? tabIconSize, tabIconSelectedSize, tabBarHeight, tabSize;
  final TextStyle? textStyle;
  final Function? onTabItemSelected;

  // Changed to initialSelectedIndex
  final int initialSelectedIndex;

  final List<String?> labels;
  final List<String>? icons;
  final List<String>? inActiveIcons;
  final bool useSafeArea;
  final MotionTabBarController? controller;

  // badge
  final List<Widget?>? badges;

  CustomMotionTabBar({
    super.key,
    this.textStyle,
    this.tabIconColor = Colors.black,
    this.tabIconSize = 24,
    this.tabIconSelectedColor = Colors.white,
    this.tabIconSelectedSize = 24,
    this.tabSelectedColor = Colors.black,
    this.tabBarColor = Colors.white,
    this.tabBarHeight = 65,
    this.tabSize = 60,
    this.onTabItemSelected,
    required this.initialSelectedIndex, // New parameter
    required this.labels,
    this.icons,
    this.inActiveIcons,
    this.useSafeArea = true,
    this.badges,
    this.controller,
  })  : assert(initialSelectedIndex >= 0 &&
            initialSelectedIndex < labels.length), // Ensure valid index
        assert(icons != null && icons.length == labels.length),
        assert((badges != null && badges.isNotEmpty)
            ? badges.length == labels.length
            : true);

  @override
  CustomMotionTabBarState createState() => CustomMotionTabBarState();
}

class CustomMotionTabBarState extends State<CustomMotionTabBar>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Tween<double> _positionTween;
  late Animation<double> _positionAnimation;

  late AnimationController _fadeOutController;
  late Animation<double> _fadeFabOutAnimation;
  late Animation<double> _fadeFabInAnimation;

  List<String?> labels = [];
  late Map<String?, String> icons;
  late Map<String?, String> inActiveIcons;

  int get tabAmount => icons.keys.length;
  int get index => labels.indexOf(selectedTab);

  double fabIconAlpha = 1;
  String? activeIcon;
  String? selectedTab;

  bool isRtl = false;
  List<Widget>? badges;
  Widget? activeBadge;

  double getPosition(bool isRTL) {
    double pace = 2 / (labels.length - 1);
    double position = (pace * index) - 1;

    if (isRTL) {
      position = 1 - (pace * index); // Reverse the position calculation for RTL
    }

    return position;
  }

  Future<void> getLang() async {
    await getLocale().then((value) {
      setState(() {
        isRtl = value.languageCode == 'ar';
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getLang();
    Future.delayed(Duration.zero, () {
      _init();
    });
  }

  void _init() {
    if (widget.controller != null) {
      widget.controller!.onTabChange = (index) {
        setState(() {
          activeIcon = widget.icons![index];
          selectedTab = widget.labels[index];
        });
        _initAnimationAndStart(_positionAnimation.value, getPosition(isRtl));
      };
    }

    // Initialize labels properly here
    labels = widget.labels;

    icons = {
      for (var label in labels) label: widget.icons![labels.indexOf(label)]
    };

    // Set selectedTab based on initialSelectedIndex
    selectedTab = labels[widget.initialSelectedIndex];
    activeIcon = icons[selectedTab];

    // Init badge text
    activeBadge = (widget.badges != null && widget.badges!.isNotEmpty)
        ? widget.badges![widget.initialSelectedIndex]
        : null;

    _animationController = AnimationController(
      duration: const Duration(milliseconds: ANIM_DURATION),
      vsync: this,
    );

    _fadeOutController = AnimationController(
      duration: const Duration(milliseconds: (ANIM_DURATION ~/ 5)),
      vsync: this,
    );

    _positionTween = Tween<double>(begin: getPosition(isRtl), end: 1);

    _positionAnimation = _positionTween.animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _fadeFabOutAnimation = Tween<double>(begin: 1, end: 0).animate(
        CurvedAnimation(parent: _fadeOutController, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {
          fabIconAlpha = _fadeFabOutAnimation.value;
        });
      })
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            activeIcon = icons[selectedTab];
            int selectedIndex =
                labels.indexWhere((element) => element == selectedTab);
            activeBadge = (widget.badges != null && widget.badges!.isNotEmpty)
                ? widget.badges![selectedIndex]
                : null;
          });
        }
      });

    _fadeFabInAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.8, 1, curve: Curves.easeOut)))
      ..addListener(() {
        setState(() {
          fabIconAlpha = _fadeFabInAnimation.value;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    if (labels.isEmpty) {
      return const SizedBox(); // Or show a loading spinner
    }
    return Container(
      decoration: BoxDecoration(
        color: widget.tabBarColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, -1),
            blurRadius: 5,
          ),
        ],
      ),
      child: SafeArea(
        bottom: widget.useSafeArea,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: widget.tabBarHeight,
              decoration: BoxDecoration(
                color: widget.tabBarColor,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: generateTabItems(),
              ),
            ),
            IgnorePointer(
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Align(
                  heightFactor: 0,
                  alignment: Alignment(_positionAnimation.value, 0),
                  child: FractionallySizedBox(
                    widthFactor: 1 / tabAmount,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: widget.tabSize! + 30,
                          width: widget.tabSize! + 30,
                          child: ClipRect(
                            clipper: HalfClipper(),
                            child: Center(
                              child: Container(
                                width: widget.tabSize! + 10,
                                height: widget.tabSize! + 10,
                                decoration: BoxDecoration(
                                  color: widget.tabBarColor,
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: widget.tabSize! + 15,
                          width: widget.tabSize! + 35,
                          child: CustomPaint(
                              painter: HalfPainter(color: widget.tabBarColor)),
                        ),
                        SizedBox(
                          height: widget.tabSize,
                          width: widget.tabSize,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: widget.tabSelectedColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Opacity(
                                opacity: fabIconAlpha,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      activeIcon ?? '',
                                      width: widget.tabIconSelectedSize,
                                    ),
                                    activeBadge != null
                                        ? Positioned(
                                            top: 0,
                                            right: 0,
                                            child: activeBadge!,
                                          )
                                        : const SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> generateTabItems() {
    bool isRtl = Directionality.of(context).index == 0;

    return labels.map((tabLabel) {
      // Reverse if RTL
      bool isSelected = selectedTab == tabLabel;

      String? icon = isSelected
          ? icons[tabLabel]
          : widget.inActiveIcons != null
              ? widget.inActiveIcons![labels.indexOf(tabLabel)]
              : icons[tabLabel];

      int selectedIndex = labels.indexWhere((element) => element == tabLabel);

      Widget? badge = (widget.badges != null && widget.badges!.isNotEmpty)
          ? widget.badges![selectedIndex]
          : null;

      return CustomMotionTabItem(
        selected: isSelected,
        iconData: icon,
        title: tabLabel,
        textStyle: widget.textStyle ?? const TextStyle(color: Colors.black),
        tabIconColor: widget.tabIconColor ?? Colors.black,
        tabIconSize: widget.tabIconSize,
        badge: badge,
        callbackFunction: () {
          setState(() {
            activeIcon = icon;
            selectedTab = tabLabel;
            widget.onTabItemSelected!(index);
          });
          _initAnimationAndStart(_positionAnimation.value, getPosition(isRtl));
        },
      );
    }).toList();
  }

  void _initAnimationAndStart(double from, double to) {
    _positionTween.begin = from;
    _positionTween.end = to;

    _animationController.reset();
    _fadeOutController.reset();
    _animationController.forward();
    _fadeOutController.forward();
  }
}
