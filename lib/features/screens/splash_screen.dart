import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/common/elevated_button01.dart';
import 'package:jp_app/features/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key, required this.flavors});

  final List<String> flavors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 88),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hintergründe/bg_startscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 135,
              left: -5,
              child: Transform.scale(
                scale: 1.17,
                child: Image.asset(
                  'assets/grafiken/cupcake_chick.png',
                  width: 549,
                  height: 549,
                  //scale: 1,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              child: Transform.scale(
                scale: 1.1,
                // child: ColorFiltered(
                //   colorFilter: ColorFilter.mode(Colors.red, BlendMode.modulate), // sollte eigentlich softlight sein
                child: Image.asset(
                  'assets/details/snack_snack.png',
                  //
                  fit: BoxFit.cover,
                ),
                // ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 12.0, left: 8, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    clipBehavior: Clip.hardEdge,
                    key: Key('SnackishCard'),
                    // color: const Color.fromRGBO(255, 255, 255, 0.01), // Wert aus Vorlage, passt visuell aber nicht in Emulator
                    color: const Color.fromARGB(128, 63, 63, 63),
                    shadowColor: const Color.fromRGBO(0, 0, 0, 0),
                    margin: EdgeInsets.all(18),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(
                        // color: Color.fromRGBO(255, 255, 255, 0.3), // Wert aus Vorlage, passt visuell aber nicht in Emulator
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                        width: 1.0,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 30.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Feeling Snackish Today?',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            SizedBox(height: 3),
                            Text(
                              textAlign: TextAlign.center,
                              'Explore Angi’s most popular snack selection and get instantly happy.',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),

                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: ElevatedButton01(
                                    buttonText: 'Order Now',
                                    flavors: flavors,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
