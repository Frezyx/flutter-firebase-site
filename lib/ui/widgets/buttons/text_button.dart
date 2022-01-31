import 'package:flutter/material.dart';

class BaseTextButton extends StatefulWidget {
  const BaseTextButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.hoverColor = Colors.white,
    this.textColor,
    this.hoverTextStyle,
    this.textStyle,
  }) : super(key: key);

  final Color hoverColor;
  final Color? textColor;
  final String title;
  final VoidCallback? onPressed;
  final TextStyle? hoverTextStyle;
  final TextStyle? textStyle;

  @override
  State<BaseTextButton> createState() => _BaseTextButtonState();
}

class _BaseTextButtonState extends State<BaseTextButton> {
  var _hovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      onPressed: widget.onPressed,
      onHover: (val) {
        setState(() => _hovered = val);
      },
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Text(
        widget.title,
        style: _hovered
            ? widget.hoverTextStyle ?? _getDefaultTextStyle(theme)
            : widget.textStyle ?? _getDefaultTextStyle(theme),
      ),
    );
  }

  TextStyle _getDefaultTextStyle(ThemeData theme) {
    return TextStyle(
      color:
          _hovered ? widget.hoverColor : widget.textColor ?? theme.primaryColor,
    );
  }
}
