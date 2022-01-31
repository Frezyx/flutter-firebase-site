import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';
import 'package:flutter_firebase_site/ui/widgets/responsive/responsive.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 69,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppBarLogo(),
              const Spacer(flex: 6),
              ResponsiveBuilder(
                largeScreen: const AppBarMenu(),
                mediumScreen: AppBarMobileMenu(),
              ),
              const SizedBox(width: 10),
              const ResponsiveBuilder(
                largeScreen: AppBarActions(),
                smallScreen: SizedBox(),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class AppBarMobileMenu extends StatelessWidget {
  const AppBarMobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu),
      color: theme.primaryColor,
    );
  }
}

class AppBarActions extends StatelessWidget {
  const AppBarActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Button(
          title: 'Contact Us',
          onPressed: () {},
          outlined: true,
        ),
        const SizedBox(width: 10),
        Button(
          title: 'Register',
          onPressed: () {},
        ),
        const SizedBox(width: 30),
      ],
    );
  }
}

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            BaseTextButton(
              title: 'Home',
              onPressed: () {},
            ),
            BaseTextButton(
              title: 'Home',
              onPressed: () {},
            ),
            BaseTextButton(
              title: 'Home',
              onPressed: () {},
            ),
            BaseTextButton(
              title: 'Home',
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30),
        const Text('Logo'),
      ],
    );
  }
}
