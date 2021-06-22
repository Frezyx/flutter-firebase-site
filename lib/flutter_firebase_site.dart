import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/widgets/home.dart';
import 'theme/theme.dart';

class FlutterFirebaseSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Site',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Home(),
    );
  }
}
