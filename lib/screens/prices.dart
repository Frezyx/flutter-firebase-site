import 'package:flutter/material.dart';

class Prices extends StatelessWidget {
  const Prices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      "Prices",
      style: theme.textTheme.headline1,
    );
  }
}
