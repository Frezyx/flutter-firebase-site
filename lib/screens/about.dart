import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({
    Key key,
    @required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      "About",
      style: theme.textTheme.headline1,
    );
  }
}
