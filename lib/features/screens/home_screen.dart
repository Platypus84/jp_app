import 'package:flutter/material.dart';
import 'package:jp_app/common/categories_scrollview.dart';
import 'package:jp_app/features/product/data/productlist.dart';
import 'package:jp_app/features/product/presentation/products_scroll_view.dart';
import 'package:jp_app/features/product/presentation/special_offer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/hintergründe/bg_mainscreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Choose Your Favorite \nSnack',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 20),
            CategoriesScrollView(),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: SpecialOffer(),
            ),
            SizedBox(height: 58),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We Recommend',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                  child: Transform.scale(
                    scale: 1.1,
                    child: ProductsScrollView(products: products),
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
