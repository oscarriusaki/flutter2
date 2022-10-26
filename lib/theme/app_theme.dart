import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.indigo;
  static ThemeData lightTheme = ThemeData.light().copyWith(
    backgroundColor: Colors.indigo,
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
    ),
  );
}
