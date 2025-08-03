import 'package:flutter/material.dart';

class ElevatedButton01 extends StatelessWidget {
  final String buttonText;
  final List<String>? flavors;
  final VoidCallback? onPressed;

  const ElevatedButton01({
    super.key,
    this.flavors,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(234, 113, 197, 0.5),
            offset: Offset(0, 10),
            blurRadius: 30,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.transparent),
          //shadowColor: WidgetStatePropertyAll(Color.fromRGBO(234, 113, 197, 1)),
          //elevation: WidgetStatePropertyAll(15),
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 24)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          backgroundBuilder: (context, states, child) {
            return Ink(
              decoration: BoxDecoration(
                // border: BoxBorder.all(color: Color(0xffffffff)),
                gradient: RadialGradient(
                  colors: [Color(0xffF69EA3), Color(0xffE970C4)],
                  radius: 4,
                  center: AlignmentGeometry.directional(1, 0),
                ),
              ),
              child: child,
            );
          },
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24.0),
          child: Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
