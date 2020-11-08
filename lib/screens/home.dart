import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      "SIMPLE FLUTTER WEB APP",
      style: theme.textTheme.headline1,
    );
  }
}
