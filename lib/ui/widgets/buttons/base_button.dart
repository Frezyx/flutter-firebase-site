import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.title,
    required this.onPressed,
    this.outlined = false,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    if (outlined) {
      return OutlinedButton(
        onPressed: onPressed,
        style: _getButtonStyle(context, outlined: outlined),
        child: _ButtonBody(title: title, outlined: outlined),
      );
    }
    return ElevatedButton(
      onPressed: onPressed,
      style: _getButtonStyle(context, outlined: outlined),
      child: _ButtonBody(title: title, outlined: outlined),
    );
  }

  ButtonStyle _getButtonStyle(BuildContext context, {required bool outlined}) {
    final theme = Theme.of(context);
    if (outlined) {
      return OutlinedButton.styleFrom(
        side: BorderSide(color: theme.primaryColor),
        backgroundColor: Colors.transparent,
        primary: theme.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      );
    }
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(theme.primaryColor),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

class _ButtonBody extends StatelessWidget {
  const _ButtonBody({
    Key? key,
    required this.title,
    this.outlined = false,
  }) : super(key: key);

  final String title;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title,
        style: TextStyle(
          color: outlined ? theme.primaryColor : Colors.white,
        ),
      ),
    );
  }
}
