import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/widgets/responsive/responsive_view.dart';

import 'href_button.dart';

class NavBar extends StatelessWidget {
  NavBar({
    Key? key,
    required this.titles,
    required this.scaffoldKey,
    required this.selectedIndex,
    required this.onItemSelected,
    this.selectedStyle,
    this.style,
  }) : super(key: key);

  final List<String> titles;
  final int selectedIndex;
  final TextStyle? selectedStyle;
  final TextStyle? style;
  final Function(int) onItemSelected;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      largeScreen: _buildLargeView(),
      mediumScreen: _buildLargeView(),
      smallScreen: _buildSmallScreen(context),
    );
  }

  Widget _buildSmallScreen(BuildContext context) {
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
            _buildBurger(context),
            Image.asset('assets/img/FlutterWeb.png', width: 160, height: 35),
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

  Widget _buildBurger(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      iconSize: 32,
      splashRadius: 1.0,
      color: theme.accentColor,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () => scaffoldKey.currentState!.isDrawerOpen
          ? Navigator.pop(context)
          : scaffoldKey.currentState!.openDrawer(),
      icon: scaffoldKey.currentState!.isDrawerOpen
          ? Icon(Icons.close)
          : Icon(Icons.menu),
    );
  }

  List<Widget> _buildButtons() {
    List<LinkButton> buttons = [];
    for (var i = 0; i < titles.length; i++) {
      final button = LinkButton(
        onTap: () => onItemSelected(i),
        title: titles[i],
        style: i == selectedIndex ? selectedStyle : style,
      );
      buttons.add(button);
    }
    return buttons;
  }
}
