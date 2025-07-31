import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/common/elevated_button01.dart';
import 'package:jp_app/features/product/data/product.dart';

class JPBottomSheet extends StatelessWidget {
  final Product product;

  const JPBottomSheet({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: Color.fromARGB(255, 36, 36, 36),
          height: 800,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(children: [

                
              ],
            ),
          ),
        ),
        Positioned(
          top: -145,
          left: 0,
          child: Image.asset(product.image, scale: 1.2),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: IconButton.outlined(
            constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
            onPressed: () => {},
            icon: Icon(Icons.close),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 188.0, bottom: 96),
                    child: Column(
                      key: Key('ColumnInfoCard'),
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Card(
                          clipBehavior: Clip.hardEdge,
                          //color: const Color.fromARGB(128, 98, 98, 98),
                          color: Color.fromRGBO(255, 255, 255, 0.1),
                          shadowColor: Colors.transparent,
                          margin: EdgeInsets.all(0),
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
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32.0,
                                vertical: 16.0,
                              ),
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.favorite_outline),
                                      Text(product.likes.toString()),
                                    ],
                                  ),
                                  Text(
                                    product.name,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineLarge,
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    product.description,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(235, 235, 245, 0.6),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    '₳ ${product.price.toString()}',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineMedium,
                                  ),
                                  Divider(
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                    height: 48,
                                    thickness: 0.5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ingredients',
                                              style: TextStyle(
                                                fontSize:
                                                    16, // size 11 aus Vorlage passt optisch nicht
                                                color: Color.fromRGBO(
                                                  235,
                                                  235,
                                                  245,
                                                  0.6,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                    'assets/grafiken/gluten-free.png',
                                                    // Color(0xffD9D9D9) aus Vorlage entspricht nicht dem visuellen Beispiel
                                                    color: Color(0xffffffff),
                                                  ),
                                                  Image.asset(
                                                    'assets/grafiken/sugar-free.png',
                                                    color: Color(0xffffffff),
                                                  ),
                                                  Image.asset(
                                                    'assets/grafiken/no-fat.png',
                                                    color: Color(0xffffffff),
                                                  ),
                                                  Image.asset(
                                                    'assets/grafiken/calories.png',
                                                    color: Color(0xffffffff),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Reviews',
                                              style: TextStyle(
                                                fontSize:
                                                    16, // size 11 aus Vorlage passt optisch nicht
                                                color: Color.fromRGBO(
                                                  235,
                                                  235,
                                                  245,
                                                  0.6,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 20.0,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 20.0,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 20.0,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 20.0,
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  ' 4.0',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color.fromRGBO(
                                                      235,
                                                      235,
                                                      245,
                                                      0.6,
                                                    ),
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        color: Color.fromRGBO(118, 118, 128, 0.24),
                        shadowColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () => {},
                                child: Text('Small'),
                              ),
                              // VerticalDivider(
                              //   thickness: 2,
                              //   width: 2,
                              //   color: Colors.white,
                              //   indent: 4,
                              //   endIndent: 4,
                              // ),
                              TextButton(
                                onPressed: () => {},
                                child: Text('Medium'),
                              ),
                              TextButton(
                                onPressed: () => {},
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  backgroundColor: Color(0xff636366),
                                ),
                                child: Text('Large'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Elevated Buttons Small Medium Large
                      Row(
                        children: [
                          IconButton.outlined(
                            constraints: BoxConstraints(
                              maxHeight: 40,
                              maxWidth: 40,
                            ),
                            onPressed: () => {},
                            icon: Icon(Icons.remove),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text('1'),
                          ),
                          IconButton.outlined(
                            onPressed: () => {},
                            constraints: BoxConstraints(
                              maxHeight: 40,
                              maxWidth: 40,
                            ),
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: ElevatedButton01(
                            buttonText:
                                'Add to order for ₳ ${product.price.toString()}',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
