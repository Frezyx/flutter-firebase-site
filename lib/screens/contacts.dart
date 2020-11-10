import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({
    Key key,
    @required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      "Contacts",
      style: theme.textTheme.headline1,
    );
  }
}
