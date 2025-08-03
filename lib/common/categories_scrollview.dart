import 'package:flutter/material.dart';
import 'package:jp_app/common/category_button.dart';

class CategoriesScrollView extends StatelessWidget {
  final List<CategoryButton> _buttonSpecs = [
    CategoryButton(
      text: Row(
        children: [
          Icon(Icons.fastfood_outlined),
          Text('  All categories '),
          Icon(Icons.arrow_downward),
        ],
      ),
    ),
    CategoryButton(
      text: Row(children: [Text('Salty')]),
      textColor: Color(0xff302C23),
      bgColor: Color.fromRGBO(255, 255, 255, 0.7),
    ),
    CategoryButton(text: Row(children: [Text('Sweet')])),
    CategoryButton(text: Row(children: [Text('Drinks')])),
  ];

  CategoriesScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 8,
        clipBehavior: Clip.none,
        children: _buttonSpecs
            .map(
              (button) => CategoryButton(
                text: button.text,
                textColor: button.textColor,
                bgColor: button.bgColor,
              ),
            )
            .toList(),
      ),
    );
  }
}
