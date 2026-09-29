
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor =
      Color(0xFF2563EB);

  static const Color backgroundColor =
      Color(0xFFF3F4F6);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
    ),
    fontFamily: 'Roboto',
  );
}