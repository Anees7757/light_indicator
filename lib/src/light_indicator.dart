import 'package:flutter/material.dart';

class LightIndicator extends StatelessWidget {
  /// The total number of indicators.
  final int itemCount;

  /// The current active index.
  final int currentIndex;

  /// The color of the active indicator.
  final Color activeColor;

  /// The color of the inactive indicators.
  final Color inactiveColor;

  /// The width of the active indicator.
  final double activeWidth;

  /// The width of the inactive indicators.
  final double inactiveWidth;

  /// The height of the indicators.
  final double height;

  /// The margin between each indicator.
  final EdgeInsetsGeometry margin;

  /// The border radius of the indicators.
  final BorderRadiusGeometry borderRadius;

  /// The duration of the animation when changing indicators.
  final Duration animationDuration;

  const LightIndicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
    this.activeColor = Colors.black,
    this.inactiveColor = const Color(0xffDFDFDF),
    this.activeWidth = 24.0,
    this.inactiveWidth = 8.0,
    this.height = 8.0,
    this.margin = const EdgeInsets.symmetric(horizontal: 4.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
    this.animationDuration = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount,
        (index) => AnimatedContainer(
          duration: animationDuration,
          margin: margin,
          height: height,
          width: currentIndex == index ? activeWidth : inactiveWidth,
          decoration: BoxDecoration(
            color: currentIndex == index ? activeColor : inactiveColor,
            borderRadius: borderRadius,
          ),
        ),
      ),
    );
  }
}
