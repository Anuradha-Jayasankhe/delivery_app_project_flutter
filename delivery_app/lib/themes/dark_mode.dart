import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
    colorScheme: const ColorScheme.light(
  background: Color.fromARGB(255, 18, 18, 18), // Dark background
  primary:
      Color.fromARGB(255, 255, 122, 122), // Dark mode equivalent of primary
  secondary:
      Color.fromARGB(255, 30, 30, 30), // Dark mode equivalent of secondary
  tertiary: Color.fromARGB(255, 47, 47, 47), // Dark mode equivalent of tertiary
  inversePrimary: Color.fromARGB(255, 235, 235, 235),
));
