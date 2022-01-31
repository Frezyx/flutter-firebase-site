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
              Text('Logo'),
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
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
