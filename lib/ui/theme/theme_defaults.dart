import 'package:flutter/material.dart';

abstract class ThemeDefaults {
  ThemeDefaults._();

  static Color get baseText => const Color(0xFF000066);

  static List<BoxShadow> get commonShadow => [
        BoxShadow(
          blurRadius: 10,
          color: Colors.grey[100]!,
        ),
      ];
}
