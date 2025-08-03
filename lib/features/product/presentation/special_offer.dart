import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/common/textbutton01.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: ClipPath(
                clipper: BottomSkewClipper(),
                child: Container(
                  color: Colors.transparent,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
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
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Border Painter muss extern über der SizedBox liegen, um passgenau zu überlagern.
            Positioned.fill(
              child: CustomPaint(
                painter: BottomSkewBorderPainter(
                  borderColor: Colors.white.withValues(alpha: 0.5),
                  borderWidth: 1.0,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 24,
          right: 24,
          child: Wrap(
            children: [
              Icon(Icons.star, size: 18, color: Color(0xffEA71C5)),
              Text(' 4.8', style: TextStyle(fontSize: 13)),
            ],
          ),
        ),
        Positioned(
          bottom: -10,
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

class BottomSkewClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const double borderRadius = 30.0;

    // Reminder, wie es funktioniert: Starte oben links inkl. BorderRadius
    path.moveTo(0, borderRadius);
    path.quadraticBezierTo(0, 0, borderRadius, 0);

    // Gehe nach rechts inkl. BorderRadius
    path.lineTo(size.width - borderRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, borderRadius);

    // Gehe rechte Seite nach unten inkl. BorderRadius (beachtet verringerte Höhe für Schräge)
    path.lineTo(size.width, size.height - 40 - borderRadius);

    // Unten rechts inkl. BorderRadius (schräg)
    path.quadraticBezierTo(
      size.width,
      size.height - 40,
      size.width - borderRadius,
      size.height - 40,
    );

    // Gehe schräg nach unten links
    path.lineTo(borderRadius, size.height);

    // Unten links mit BorderRadius
    path.quadraticBezierTo(0, size.height, 0, size.height - borderRadius);

    // Gehe zurück zum Start
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// Externe Painter Klasse für Border nötig, da Flutter innerhalb von Widgets definierte Border nur bei Standard Widget Shapes darstellen kann.
class BottomSkewBorderPainter extends CustomPainter {
  final Color borderColor;
  final double borderWidth;

  BottomSkewBorderPainter({
    this.borderColor = Colors.white,
    this.borderWidth = 1.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    final path = Path();
    const double borderRadius = 30.0;

    // Reminder: Muss exakt gleicher Pfad wie im Clipper sein.
    path.moveTo(0, borderRadius);
    path.quadraticBezierTo(0, 0, borderRadius, 0);
    path.lineTo(size.width - borderRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, borderRadius);
    path.lineTo(size.width, size.height - 40 - borderRadius);
    path.quadraticBezierTo(
      size.width,
      size.height - 40,
      size.width - borderRadius,
      size.height - 40,
    );
    path.lineTo(borderRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - borderRadius);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
