import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/common/elevated_button01.dart';
import 'package:jp_app/features/product/data/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: [Color(0xff2f2b22), Color.fromRGBO(54, 66, 66, 1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.6, 1],
        ),
      ),
      height: 800,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(top: -145, child: Image.asset(product.image, scale: 1.2)),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton.outlined(
              constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
              onPressed: () => {Navigator.pop(context)},
              icon: Icon(Icons.close),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32, bottom: 38),
            child: Column(
              key: Key('ColumnProductContents'),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 188.0),
                  child: Card(
                    key: Key('InfoCard'),
                    clipBehavior: Clip.hardEdge,
                    // wichtig, dieser clip begrenzt Blur auf Card!
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    shadowColor: Colors.transparent,
                    margin: EdgeInsets.all(0),
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(
                        // color: Color.fromRGBO(255, 255, 255, 0.3), // aus Vorlage
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                        width: 1.0,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30.0,
                          top: 16.0,
                          right: 30.0,
                          bottom: 30.0,
                        ),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              key: Key('RowWithLikes'),
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite_outline, size: 16),
                                Text(
                                  ' ${product.likes.toString()}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            Text(
                              key: Key('ProductTitle'),
                              product.name,
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            SizedBox(height: 6),
                            Text(
                              key: Key('ProductLongInfo'),
                              product.longInfo,
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(235, 235, 245, 0.6),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Text(
                              key: Key('ProductPrice'),
                              '${product.currency} ${product.price}',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            Divider(
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                              height: 48,
                              thickness: 0.5,
                            ),
                            Row(
                              key: Key('RowWithIngredientsAndReviews'),
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 44,
                                  child: Column(
                                    key: Key('ColumnIngredients'),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ingredients',
                                        style: TextStyle(
                                          fontSize:
                                              13, // size 11 aus Vorlage passt optisch nicht
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
                                          key: Key('RowIngredientImages'),
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                  height: 44,
                                  child: Column(
                                    key: Key('ColumnReviews'),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Reviews',
                                        style: TextStyle(
                                          fontSize:
                                              13, // size 11 aus Vorlage passt optisch nicht
                                          color: Color.fromRGBO(
                                            235,
                                            235,
                                            245,
                                            0.6,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        key: Key('RowStarsAndNumber'),
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 16.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 16.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 16.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 16.0,
                                          ),
                                          Icon(Icons.star_border, size: 16.0),
                                          Text(
                                            ' 4.0',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromRGBO(
                                                235,
                                                235,
                                                245,
                                                0.6,
                                              ),
                                              fontWeight: FontWeight.w600,
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
                ),
                Row(
                  key: Key('RowWithProductSizesAndAmount'),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      margin: EdgeInsets.zero,
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
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                      child: ElevatedButton01(
                        buttonText:
                            'Add to order for ₳ ${product.price.toString()}',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
