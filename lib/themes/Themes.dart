import 'package:e_commerce_app_with_getx/shared/constants/ColorConstants.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey.shade50,
          elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
          hintStyle: TextStyle(
            fontSize: 14,
          )),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red),
      textTheme: TextTheme(
          displayLarge: TextStyle(
              letterSpacing: -1.5,
              fontSize: 48,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          displayMedium: TextStyle(
              letterSpacing: -1.0,
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          displaySmall: TextStyle(
              letterSpacing: -1.0,
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(
              letterSpacing: -1.0,
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w600),
          headlineSmall: TextStyle(
              letterSpacing: -1.0,
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500),
          titleLarge:
              TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          titleMedium:
              TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          titleSmall:
              TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
              color: Colors.grey.shade700, fontSize: 16, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: Colors.grey.shade600, fontSize: 14, fontWeight: FontWeight.w400),
          labelLarge:
              TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(
              color: Colors.grey.shade800, fontSize: 12, fontWeight: FontWeight.w400),
          labelSmall: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.5)));

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorConstants.gray900,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstants.gray900,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
        hintStyle: TextStyle(
          fontSize: 14,
        )),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
    textTheme: TextTheme(
        displayLarge: TextStyle(
            letterSpacing: -1.5,
            fontSize: 48,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            letterSpacing: -1.0,
            fontSize: 40,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            letterSpacing: -1.0,
            fontSize: 32,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 28,
            fontWeight: FontWeight.w600),
        headlineSmall: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 24,
            fontWeight: FontWeight.w500),
        titleLarge: TextStyle(
            color: Colors.grey.shade50, fontSize: 18, fontWeight: FontWeight.w500),
        titleMedium: TextStyle(
            color: Colors.grey.shade50, fontSize: 16, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(
            color: Colors.grey.shade50, fontSize: 14, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(
            color: Colors.grey.shade50, fontSize: 16, fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            color: Colors.grey.shade50, fontSize: 14, fontWeight: FontWeight.w400),
        labelLarge:
            TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        bodySmall: TextStyle(
            color: Colors.grey.shade50, fontSize: 12, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
            color: Colors.grey.shade50, fontSize: 10, fontWeight: FontWeight.w400)),
    bottomAppBarTheme: BottomAppBarTheme(color: ColorConstants.gray800),
  );
}
