import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.style,
  }) : super(key: key);
  final String title;
  final Function() onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: FlatButton(
        onPressed: onTap,
        focusColor: theme.accentColor,
        child: Text(title, style: style,),
      ),
    );
  }
}
