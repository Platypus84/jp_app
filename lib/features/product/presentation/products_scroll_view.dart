import 'package:flutter/material.dart';
import 'package:jp_app/features/product/data/product.dart';
import 'package:jp_app/features/product/presentation/product_card.dart';
import 'package:jp_app/features/screens/product_details_screen.dart';

class ProductsScrollView extends StatelessWidget {
  const ProductsScrollView({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 16,
        clipBehavior: Clip.hardEdge,
        children: products
            .map(
              (product) => Theme(
                // Reminder: einziger Weg für transparenten Hintergrund von Chips
                data: Theme.of(
                  context,
                ).copyWith(canvasColor: Color.fromRGBO(76, 97, 128, 1)),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return ProductDetailsScreen(product: product);
                      },
                    );
                  },
                  child: ProductCard(product: product),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
