import 'package:flutter/material.dart';

final ThemeData jpAppTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w900,
      height: 1.3,
      color: Colors.white,
      //backgroundColor: Colors.red,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
      height: 1.8,
      color: Colors.white,
      //backgroundColor: Colors.red,
    ),
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16, height: 1.4, color: Colors.white),
    bodySmall: TextStyle(
      fontSize: 13,
      height: 1.3,
      color: Color.fromRGBO(235, 235, 245, 0.6),
      fontWeight: FontWeight.w400,
    ),
    displaySmall: TextStyle(color: Color(0xffEBEBF5)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.black),
      //backgroundColor: WidgetStateProperty.all(Colors.red),
    ),
  ),

  iconTheme: IconThemeData(color: Color(0x88EBEBF5)),

  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      iconSize: 16,
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
      foregroundColor: Colors.white,
      // Opacity 0.2 aus Vorlage passt optisch nicht.
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      foregroundColor: WidgetStateProperty.all(Color(0xffEBEBF5)),
    ),
  ),
);
