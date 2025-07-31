import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:jp_app/features/product/data/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      //shape: RoundedRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(product.image),
              Text(product.name),
              Text('Strawberry ice cream'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product.price.toString()),
                  Row(
                    children: [
                      Icon(Icons.favorite_outline),
                      Text(product.likes.toString()),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
