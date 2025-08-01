import 'package:flutter/material.dart';
import 'package:jp_app/features/screens/splash_screen.dart';
import 'package:jp_app/theme/jp_app_theme.dart';

class JPApp extends StatefulWidget {
  const JPApp({super.key});

  @override
  State<JPApp> createState() => _JPAppState();
}

class _JPAppState extends State<JPApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: jpAppTheme,
      home: Scaffold(body: SplashScreen(flavors: [])),
    );
  }
}
