import 'dart:ui';
import 'package:flutter/material.dart';

class ElevatedButton02 extends StatelessWidget {
  const ElevatedButton02({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        // shadowColor: WidgetStatePropertyAll(Colors.black),
        // elevation: WidgetStatePropertyAll(7),
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 24)),
        // shape: WidgetStatePropertyAll(
        //   RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        // ),
        backgroundBuilder: (context, states, child) {
          return Ink(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff908cf5), Color(0xffbb8de1)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.72],
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),
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
