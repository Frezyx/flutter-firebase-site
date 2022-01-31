import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';
import 'package:flutter_firebase_site/ui/widgets/appbar/widgets/widgets.dart';
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
              const ResponsiveBuilder(
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
