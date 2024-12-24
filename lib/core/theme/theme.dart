import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
      backgroundColor: Color(0xFF6961FF),
    ),
    chipTheme: const ChipThemeData(
      disabledColor: Colors.grey,
      selectedColor: Color(0xFF00B2B2),
    ),
    colorScheme: const ColorScheme(
      primary: Color(0xFF6961FF),
      onPrimary: Colors.white,
      secondary: Color(0xFF00B2B2),
      onSecondary: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
      brightness: Brightness.light,
      error: Colors.red,
      onError: Colors.purple,
    ),
    useMaterial3: true,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        // TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        // TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
      backgroundColor: Color(0xFF6961FF),
    ),
    chipTheme: const ChipThemeData(
      disabledColor: Colors.grey,
      selectedColor: Color(0xFF00B2B2),
    ),
    colorScheme: const ColorScheme(
      primary: Color(0xFF6961FF),
      onPrimary: Colors.black,
      secondary: Color(0xFF00B2B2),
      onSecondary: Colors.black,
      surface: Colors.black,
      onSurface: Colors.black,
      brightness: Brightness.dark,
      error: Colors.red,
      onError: Colors.purple,
    ),
    useMaterial3: true,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        // TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        // TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
  );
}
