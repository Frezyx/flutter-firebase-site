import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      "About",
      style: theme.textTheme.headline1,
    );
  }
}
