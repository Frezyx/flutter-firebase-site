import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase_site/screens/home.dart';
import 'package:flutter_firebase_site/widgets/nav_bar.dart';

import 'blocs/navigation_bloc.dart';
import 'screens/about.dart';
import 'screens/contacts.dart';
import 'screens/prices.dart';
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Site',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: MultiProvider(providers: [
        ChangeNotifierProvider<NavigationBloc>(create: (_) => NavigationBloc()),
      ], builder: (ctx, w) => Home()),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  final Map<int, Widget> screens = {
    0: HomeScreen(),
    1: About(),
    2: Prices(),
    3: Contacts(),
  };

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navigationBloc = Provider.of<NavigationBloc>(context);
    return Scaffold(
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
                      selectedIndex: navigationBloc.selectedIndex,
                      onItemSelected: (int index) =>
                          navigationBloc.selectedIndex = index,
                      style: theme.textTheme.headline3,
                      selectedStyle: theme.textTheme.headline3.copyWith(
                        color: theme.accentColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      child: screens[navigationBloc.selectedIndex],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
