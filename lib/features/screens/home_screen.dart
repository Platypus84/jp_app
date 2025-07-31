import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/common/elevated_button02.dart';
import 'package:jp_app/features/product/data/product.dart';
import 'package:jp_app/features/screens/bottom_sheet_screen.dart';
import 'package:jp_app/features/product/presentation/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static List<String> flavors = ['All categories', 'Salty', 'Sweet', 'Drinks'];

  static List<Product> products = [
    Product(
      productName: 'Mogli\'s Cup',
      productDescription:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      productPrice: 8.99,
      productLikes: 200,
      productImage: 'assets/grafiken/cupcake_cat.png',
    ),
    Product(
      productName: 'Balu\'s Cup',
      productDescription:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      productPrice: 8.99,
      productLikes: 165,
      productImage: 'assets/grafiken/icecream.png',
    ),
    Product(
      productName: 'Smiling David',
      productDescription:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      productPrice: 3.99,
      productLikes: 310,
      productImage: 'assets/grafiken/icecream_stick.png',
    ),
    Product(
      productName: 'Kai in a Cone',
      productDescription:
          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
      productPrice: 8.99,
      productLikes: 290,
      productImage: 'assets/grafiken/icecream_cone.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 48, bottom: 16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/hintergründe/bg_mainscreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 220,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Choose Your Favorite Snack',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8,
                clipBehavior: Clip.hardEdge,
                children: flavors
                    .map(
                      (name) => Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.white.withValues(alpha: 0.5),
                          //     spreadRadius: 0,
                          //     blurRadius: 2,
                          //     offset: Offset(0, 0),
                          //   ),
                          // ],
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(235, 245, 245, 0.6),
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          clipBehavior: Clip.hardEdge,
                          onPressed: () => {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            side: BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                              width: 1,
                            ),
                          ),
                          child: Text(name),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Stack(
              children: <Widget>[
                Opacity(
                  opacity: 0.8,
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/details/cut_card.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                      vertical: 24.0,
                    ),
                    child: InkWell(
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        shadowColor: Colors.transparent,
                        margin: EdgeInsets.all(18),
                        elevation: 7.0,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Angis Yummy Burger',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 3),
                              Text(
                                'Delish began burger that tastes like heaven',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffd9d9d9),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text('\$ 13.99'),
                              SizedBox(height: 64),
                              ElevatedButton02(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 32,
                  right: 32,
                  child: Wrap(
                    children: [
                      Icon(Icons.star, color: Colors.pink),
                      Text('4.8'),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 0,
                  child: Image.asset(
                    'assets/grafiken/burger.png',
                    width: 217,
                    height: 217,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We Recommend',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 8,
                    clipBehavior: Clip.hardEdge,
                    children: products
                        .map(
                          (product) => Theme(
                            // only way to achieve transparent backgrounds of the chips
                            data: Theme.of(context).copyWith(
                              canvasColor: Color.fromRGBO(76, 97, 128, 1),
                            ),
                            child: SizedBox(
                              height: 262,
                              width: 190,
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet<void>(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return JPBottomSheet(product: product);
                                    },
                                  );
                                },
                                child: ProductCard(product: product),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
