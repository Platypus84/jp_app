import 'package:flutter/material.dart';

final ThemeData jpAppTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Color(0xff394960),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      height: 1.4,
      //backgroundColor: Colors.red,
    ),
    headlineMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      height: 1,
      color: Colors.red,
      //backgroundColor: Colors.red,
    ),
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16, height: 1.4, color: Colors.white),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    elevation: 0.0,
  ),
  navigationBarTheme: NavigationBarThemeData(
    elevation: 0,
    backgroundColor: Colors.transparent,
    indicatorColor: Color(0xFF2A313D),
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
    ),
    // labelTextStyle: WidgetStateTextStyle.resolveWith((Set states) {
    //   final Color color = states.contains(WidgetState.selected)
    //       ? UnaurisColorScheme.premiumBeigeNoon
    //       : UnaurisColorScheme.royalBlueNoon;
    //   return TextStyle(color: color, fontSize: 14);
    // }),
  ),
);
