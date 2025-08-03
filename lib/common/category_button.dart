import 'dart:ui';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final Row text;

  const CategoryButton({
    super.key,
    required this.text,
    this.bgColor = const Color.fromRGBO(255, 255, 255, 0.2),
    this.textColor = const Color.fromRGBO(235, 235, 245, 0.6),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      clipBehavior: Clip.hardEdge,
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
        backgroundColor: bgColor,
        foregroundColor: textColor,
        shadowColor: Colors.transparent,
        elevation: 0,
        side: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.5), width: 1),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
        child: text,
      ),
    );
  }
}
