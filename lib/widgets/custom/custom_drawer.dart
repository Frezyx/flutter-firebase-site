import 'package:flutter/material.dart';

import '../href_button.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({
    Key key,
    @required this.titles,
    @required this.selectedIndex,
    @required this.onItemSelected,
    this.selectedStyle,
    this.style,
  }) : super(key: key);

  final List<String> titles;
  final int selectedIndex;
  final TextStyle selectedStyle;
  final TextStyle style;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    final children = _buildButtons()..insert(0, _buildHeader(context));
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: children,
      ),
    );
  }

  List<Widget> _buildButtons() {
    List<Widget> buttons = [];
    for (var i = 0; i < titles.length; i++) {
      final Widget button = ListTile(
        title: LinkButton(
          onTap: () => onItemSelected(i),
          title: titles[i],
          style: i == selectedIndex ? selectedStyle : style,
        ),
      );
      buttons.add(button);
    }
    return buttons;
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);
    return DrawerHeader(
      decoration: BoxDecoration(
        color: theme.backgroundColor,
      ),
      child: InkWell(
        onTap: () => onItemSelected(0),
        child: Image.asset(
          'assets/img/FlutterWeb.png',
          width: 160,
          height: 35,
        ),
      ),
    );
  }
}
