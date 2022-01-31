import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Row(
          children: [
            BaseTextButton(
              title: 'Home',
              onPressed: () {},
              textColor: ThemeDefaults.baseText,
              hoverColor: theme.primaryColor,
            ),
            BaseTextButton(
              title: 'Cases',
              onPressed: () {},
              textColor: ThemeDefaults.baseText,
              hoverColor: theme.primaryColor,
            ),
            BaseTextButton(
              title: 'Price',
              onPressed: () {},
              textColor: ThemeDefaults.baseText,
              hoverColor: theme.primaryColor,
            ),
            BaseTextButton(
              title: 'Partners',
              onPressed: () {},
              textColor: ThemeDefaults.baseText,
              hoverColor: theme.primaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
