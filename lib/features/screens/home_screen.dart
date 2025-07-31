import 'package:flutter/material.dart';
import 'package:jp_app/common/categories_scrollview.dart';
import 'package:jp_app/features/product/data/productlist.dart';
import 'package:jp_app/features/product/presentation/products_scroll_view.dart';
import 'package:jp_app/features/product/presentation/special_offer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List<String> flavors = ['All categories', 'Salty', 'Sweet', 'Drinks'];

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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Choose Your Favorite \nSnack',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            CategoriesScrollView(flavors: flavors),
            SpecialOffer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We Recommend',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 8),
                ProductsScrollView(products: products),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
