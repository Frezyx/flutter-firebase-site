import 'package:flutter/material.dart';

abstract class ThemesLibrary {
  ThemesLibrary._();

  static ThemeData get lightTheme => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
