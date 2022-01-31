import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';

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
