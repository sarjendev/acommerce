import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Color.fromARGB(255, 0, 112, 54),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 0, 112, 54),
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 112, 54),
            ),
            side: const BorderSide(
                color: Color.fromARGB(255, 0, 112, 54), width: 1.7),
            disabledForegroundColor:
                Color.fromARGB(255, 0, 112, 54).withOpacity(0.38))),
    inputDecorationTheme: InputDecorationTheme(
      border: outlineInputBorder,
      errorBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      focusedBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 0, 112, 54),
        textStyle: const TextStyle(
          fontSize: 18.0,
        ),
        disabledBackgroundColor: Colors.grey,
      ),
    ),
    primarySwatch: Colors.red,
    canvasColor: Colors.red,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black)));

OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.grey,
  ),
);
