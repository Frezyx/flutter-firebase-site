import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/widgets/buttons/text_button.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: _opacity,
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: Colors.white.withOpacity(0.5),
                body: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.0,
                    sigmaY: 4.0,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BaseTextButton(title: 'Home', onPressed: () {}),
                    BaseTextButton(title: 'Home', onPressed: () {}),
                    BaseTextButton(title: 'Home', onPressed: () {}),
                    BaseTextButton(title: 'Home', onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
