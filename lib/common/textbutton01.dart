import 'package:flutter/material.dart';

class TextButton01 extends StatelessWidget {
  const TextButton01({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 16.0),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        // shadowColor: WidgetStatePropertyAll(Colors.black),
        // elevation: WidgetStatePropertyAll(7),
        // shape: WidgetStatePropertyAll(
        //   RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        // ),
        backgroundBuilder: (context, states, child) {
          return Ink(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffbb8de1), Color(0xff908cf5)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.72],
              ),
            ),
            child: child,
          );
        },
      ),
      onPressed: () {
        // ignore: avoid_print
        print('Pressed');
      },
      child: Text(
        'Add to order',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
