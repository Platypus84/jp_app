import 'package:flutter/material.dart';

final ThemeData jpAppTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.w900,
      height: 1.2,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
      height: 1.3,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16, height: 1.4, color: Colors.white),
    bodySmall: TextStyle(
      fontSize: 13,
      height: 1.2,
      color: Color.fromRGBO(235, 235, 245, 0.6),
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(color: Color(0xffEBEBF5)),
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
      //tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //minimumSize: WidgetStatePropertyAll(Size.zero),
      //padding: WidgetStatePropertyAll(EdgeInsets.zero),
      textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 13.0)),
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      foregroundColor: WidgetStateProperty.all(Color(0xffEBEBF5)),
    ),
  ),
);
