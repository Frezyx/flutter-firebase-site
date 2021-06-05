import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/theme/responsive/responsive_helper.dart';

class ResponsiveView extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveView(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveHelper.isLargeScreen(context)) {
      return largeScreen;
    } else if (ResponsiveHelper.isMediumScreen(context)) {
      return mediumScreen ?? largeScreen;
    } else {
      return smallScreen ?? largeScreen;
    }
  }
}
