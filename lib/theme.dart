import 'package:flutter/material.dart';

final themeData = ThemeData(
  fontFamily: "Roboto",
  iconTheme: IconThemeData(color: Colors.yellow),
  primarySwatch: MaterialColor(0xff880808, <int, Color>{
    50: Colors.red.shade50,
    100: Colors.red.shade100,
    200: Colors.red.shade200,
    300: Colors.red.shade300,
    400: Colors.red.shade400,
    500: Colors.red.shade500,
    600: Colors.red.shade600,
    700: Colors.red.shade700,
    800: Colors.red.shade800,
    900: Colors.red.shade900,
  }),
  primaryColorLight: Colors.red.shade900,
  appBarTheme: AppBarTheme(backgroundColor: Colors.red.shade900),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.black),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.red.shade900),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.green),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.red),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.red.shade800))),
);
