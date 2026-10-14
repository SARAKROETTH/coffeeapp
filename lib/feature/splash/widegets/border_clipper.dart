import 'package:flutter/material.dart';

class BorderClipper extends CustomPainter {

  final Color color;

  BorderClipper({ required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final curveHeight = (h * 0.15).clamp(75.0, 120.0);

    final path = Path();

    // Bottom-left
    path.moveTo(0, h);

    // Left side
    path.lineTo(0, curveHeight * 0.82);

    // Left curves
    path.quadraticBezierTo(
      9, curveHeight * 0.66,
      w * 0.13, curveHeight * 0.66,
    );

    path.lineTo(w * 0.18, curveHeight * 0.66);

    path.quadraticBezierTo(
      w * 0.26, curveHeight * 0.66,
      w * 0.32, curveHeight * 0.48,
    );

    path.quadraticBezierTo(
      w * 0.37, curveHeight * 0.37,
      w * 0.41, curveHeight * 0.36,
    );

    // Center peak
    path.lineTo(w * 0.5, curveHeight * 0.13);

    // Right curves
    path.lineTo(w * 0.59, curveHeight * 0.36);

    path.quadraticBezierTo(
      w * 0.63, curveHeight * 0.37,
      w * 0.68, curveHeight * 0.48,
    );

    path.quadraticBezierTo(
      w * 0.74, curveHeight * 0.66,
      w * 0.82, curveHeight * 0.66,
    );

    path.lineTo(w * 0.87, curveHeight * 0.66);

    path.quadraticBezierTo(
      w, curveHeight * 0.66,
      w, curveHeight * 0.82,
    );

    // Extend to bottom-right
    path.lineTo(w, h);

    final fillPath = Path.from(path)..close();

    canvas.drawPath(
      fillPath,
      Paint()
        ..color = color
        ..style = PaintingStyle.fill,
    );

    // Outline: no border across the bottom
    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.orange
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1
        ..strokeJoin = StrokeJoin.round,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }


}