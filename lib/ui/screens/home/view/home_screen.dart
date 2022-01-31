import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BaseAppBar(),
        body: const Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
