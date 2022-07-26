import 'package:flutter/material.dart';
import 'package:test_saham_rakyat/utils/helper.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      primaryColor: Helper.hexCodeToColor("#129575"),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 20,
          fontFamily: "Poppins",
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: TextStyle(
          fontSize: 18,
          fontFamily: "Poppins",
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
        displaySmall: TextStyle(
          fontSize: 16,
          fontFamily: "Poppins",
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          fontFamily: "Poppins",
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          fontSize: 11,
          fontFamily: "Poppins",
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontSize: 9,
          fontFamily: "Poppins",
          color: Colors.black,
        ),
      ),
    );
  }
}
