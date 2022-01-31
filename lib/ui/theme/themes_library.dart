import 'package:flutter/material.dart';

abstract class ThemesLibrary {
  ThemesLibrary._();

  static const _primaryColor = Color(0xFF009933);

  static ThemeData get lightTheme => ThemeData(
        primaryColor: _primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        buttonTheme: const ButtonThemeData(
          buttonColor: _primaryColor,
        ),
      );
}
