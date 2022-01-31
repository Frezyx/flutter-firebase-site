import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';

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
