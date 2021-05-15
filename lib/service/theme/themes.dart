import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.red,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
    ),
  );
  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
    ),
  );

  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.blue,
    primaryColor: Colors.lightBlue,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    accentColor: Colors.blue,
    buttonColor: Colors.white,
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.grey,
    primaryColor: Colors.black,
    accentColor: Colors.blueGrey,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    buttonColor: Colors.grey,
  );
}
