import 'package:flutter/material.dart';

class Prices extends StatelessWidget {
  const Prices({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        "Prices",
        style: theme.textTheme.headline1,
      ),
    );
  }
}
