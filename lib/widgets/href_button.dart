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
    return Container(
      child: TextButton(
        onPressed: onTap,
        child: Text(title, style: style),
      ),
    );
  }
}
