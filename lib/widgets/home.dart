import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/screens/home.dart';
import 'package:flutter_firebase_site/widgets/custom/custom_drawer.dart';
import 'package:flutter_firebase_site/widgets/nav_bar.dart';

const _titles = [
  'Home',
  'About',
  'Prices',
  'Contacts',
];

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    return Scaffold(
      key: _scaffoldKey,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    NavBar(
                      titles: _titles,
                      scaffoldKey: _scaffoldKey,
                      selectedIndex: 0,
                      onItemSelected: (int i) {
                        print(i);
                      },
                      style: theme.textTheme.headline3,
                      selectedStyle: theme.textTheme.headline3!.copyWith(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      child: HomeScreen(
                        scaffoldKey: _scaffoldKey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      drawer: CustomDrawer(
        titles: _titles,
        selectedIndex: 0,
        onItemSelected: (int i) => print(i),
        style: theme.textTheme.headline3!.copyWith(
          fontWeight: FontWeight.w400,
        ),
        selectedStyle: theme.textTheme.headline3!.copyWith(
          fontWeight: FontWeight.w500,
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
