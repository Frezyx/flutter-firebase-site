import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/widgets/responsive/responsive_view.dart';

import 'href_button.dart';

const _titles = [
  'Home',
  'About',
  'Prices',
  'Contacts',
];

class NavBar extends StatelessWidget {
  NavBar({
    Key key,
    @required this.selectedIndex,
    @required this.onItemSelected,
    this.selectedStyle,
    this.style,
  }) : super(key: key);

  final int selectedIndex;
  final TextStyle selectedStyle;
  final TextStyle style;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return ResponsiveView(
      largeScreen: _buildLargeView(),
      mediumScreen: _buildLargeView(),
      smallScreen: _buildSmallScreen(size, theme),
    );
  }

  Widget _buildSmallScreen(Size size, ThemeData theme) {
    return Container(
      color: Colors.transparent,
      height: 65.0,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/img/FlutterWeb.png', width: 160, height: 35),
            _buildBurger(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildLargeView() {
    return Container(
      color: Colors.transparent,
      height: 65.0,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/img/FlutterWeb.png', width: 160, height: 35),
            Row(children: _buildButtons()),
          ],
        ),
      ),
    );
  }

  Widget _buildBurger(ThemeData theme) {
    return IconButton(
      icon: Icon(Icons.menu),
      onPressed: () => print("menu pressed"),
      color: theme.accentColor,
      iconSize: 32,
      splashRadius: 1.0,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }

  List<Widget> _buildButtons() {
    List<LinkButton> buttons = [];
    for (var i = 0; i < _titles.length; i++) {
      final button = LinkButton(
        onTap: () => onItemSelected(i),
        title: _titles[i],
        style: i == selectedIndex ? selectedStyle : style,
      );
      buttons.add(button);
    }
    return buttons;
  }
}
