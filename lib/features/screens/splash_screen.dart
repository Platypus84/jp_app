import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/common/elevated_button01.dart';
import 'package:jp_app/features/screens/home_screen.dart';
import 'package:jp_app/features/screens/bottom_sheet_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key, required this.flavors});

  final List<String> flavors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/hintergründe/bg_startscreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              Positioned(
                //bottom: 200,
                child: Image.asset(
                  'assets/grafiken/cupcake_chick.png',
                  width: 550,
                  height: 550,
                  //scale: 1,
                ),
              ),
              Positioned(
                bottom: 55,
                left: 0,
                right: 0,
                child: Image.asset('assets/details/snack_snack.png'),
              ),
              Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  key: Key('SnackishCard'),
                  // color: const Color.fromRGBO(255, 255, 255, 0.01), // aus Vorlage
                  color: const Color.fromARGB(128, 63, 63, 63),
                  shadowColor: const Color.fromRGBO(0, 0, 0, 0),
                  margin: EdgeInsets.all(18),
                  elevation: 7.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                      // color: Color.fromRGBO(255, 255, 255, 0.3), // aus Vorlage
                      color: Color.fromRGBO(255, 255, 255, 0.1),
                      width: 1.0,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 16.0,
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Feeling Snackish Today?',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Explore Angi’s most popular snack selection and get instantly happy.',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),

                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ElevatedButton01(
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
