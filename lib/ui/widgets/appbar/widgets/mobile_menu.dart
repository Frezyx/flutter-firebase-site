import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';

class AppBarMobileMenu extends StatelessWidget {
  const AppBarMobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: () {
        showMenu(context);
      },
      icon: const Icon(Icons.menu),
      color: theme.primaryColor,
    );
  }
}

void showMenu(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: Colors.transparent,
    barrierDismissible: true,
    builder: (context) {
      return const Menu();
    },
  );
}
