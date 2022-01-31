import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';

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
              const Spacer(),
              const AppBarMenu(),
              const Spacer(),
              const AppBarActions(),
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
