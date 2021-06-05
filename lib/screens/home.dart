import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/theme/responsive/responsive_helper.dart';
import 'package:flutter_firebase_site/widgets/responsive/responsive_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      largeScreen: _buildLargeView(context),
      mediumScreen: _buildLargeView(context),
      smallScreen: _smallScreenView(context),
    );
  }

  Widget _buildLargeView(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          "SIMPLE FLUTTER WEB APP",
          style: theme.textTheme.headline1!.copyWith(
            fontSize: ResponsiveHelper.width(context, 0.06),
          ),
        ),
      ),
    );
  }

  Widget _smallScreenView(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          "SIMPLE FLUTTER WEB APP",
          style: theme.textTheme.headline1!.copyWith(
            fontSize: ResponsiveHelper.width(context, 0.13),
          ),
        ),
      ),
    );
  }
}
