import 'package:flutter/material.dart';
import 'package:jp_app/features/screens/home_screen.dart';
import 'package:jp_app/features/screens/splash_screen.dart';
import 'package:jp_app/theme/jp_app_theme.dart';

class JPApp extends StatefulWidget {
  final int pageIndex;
  const JPApp({super.key, this.pageIndex = 0});

  @override
  State<JPApp> createState() => _JPAppState();
}

class _JPAppState extends State<JPApp> {
  int _currentPageIndex = 0;
  late List<Widget> screens;

  @override
  void initState() {
    super.initState();
    if (widget.pageIndex != 0) {
      _currentPageIndex = widget.pageIndex;
    }

    screens = [SplashScreen(), HomeScreen()];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: jpAppTheme,
      darkTheme: jpAppTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,

        body: screens[_currentPageIndex],
      ),
    );
  }
}
