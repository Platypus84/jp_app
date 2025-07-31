import 'package:flutter/material.dart';

class CategoriesScrollView extends StatelessWidget {
  const CategoriesScrollView({super.key, required this.flavors});

  final List<String> flavors;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 8,
        clipBehavior: Clip.hardEdge,
        children: flavors
            .map(
              (name) => ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
                  foregroundColor: Colors.white,
                  shadowColor: Colors.transparent,
                  side: BorderSide(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    width: 1,
                  ),
                ),
                child: Text(name),
              ),
            )
            .toList(),
      ),
    );
  }
}
