import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/common/textbutton01.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              horizontal: 6.0,
              vertical: 12.0,
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
                        'Angi\'s Yummy Burger',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      SizedBox(height: 3),
                      Text(
                        'Delish began burger \nthat tastes like heaven',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),

                      SizedBox(height: 12),
                      Text(
                        '₳ 13.99',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),

                      SizedBox(height: 64),
                      TextButton01(),
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
              Icon(Icons.star, size: 18, color: Color(0xffEA71C5)),
              Text(' 4.8', style: TextStyle(fontSize: 13)),
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
    );
  }
}
