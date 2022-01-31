import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/theme/theme_defaults.dart';
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
    final theme = Theme.of(context);
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
              Material(
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: theme.cardColor,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: ThemeDefaults.commonShadow,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BaseTextButton(
                                title: 'Home',
                                onPressed: () {},
                                hoverTextStyle: _getPrimaryHomeStyle(theme),
                              ),
                              BaseTextButton(
                                title: 'Cases',
                                onPressed: () {},
                                hoverTextStyle: _getPrimaryHomeStyle(theme),
                              ),
                              BaseTextButton(
                                title: 'Price',
                                onPressed: () {},
                                hoverTextStyle: _getPrimaryHomeStyle(theme),
                              ),
                              BaseTextButton(
                                title: 'Partners',
                                onPressed: () {},
                                hoverTextStyle: _getPrimaryHomeStyle(theme),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              child: Icon(
                                Icons.close_rounded,
                              ),
                              onTap: () => Navigator.pop(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _getPrimaryHomeStyle(ThemeData theme) {
    return TextStyle(
      fontSize: 28,
      color: theme.primaryColor,
    );
  }
}
