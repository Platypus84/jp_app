import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:jp_app/features/product/data/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 262,
      child: Card(
        color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              width: 1,
            ),
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFFFFF).withValues(
                  alpha: 0.25,
                ), // alpha 0 aus Vorlage passt visuell nicht
                Color(0xFF908cf5),
                Color(0xFF8c5bea),
              ],
              transform: GradientRotation(math.pi / 30),

              stops: [0.07, 0.61, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(product.image),
                Wrap(
                  children: [
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      product.shortInfo,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${product.currency} ${product.price}',
                      style: TextStyle(fontSize: 13.0),
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite_outline, size: 12),
                        Text(
                          product.likes.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
