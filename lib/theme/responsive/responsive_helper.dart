import 'package:flutter/material.dart';

abstract class ResponsiveHelper {
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  /// [percent] mast be between [0,1]
  static double width(BuildContext context, double percent) {
    return MediaQuery.of(context).size.width * percent;
  }
}
