import 'package:flutter/material.dart';
import 'dart:math';

class CircleProgress extends CustomPainter {
  CircleProgress({required this.color, required this.percent});

  final Color color;
  final int percent;

  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = 6
      ..color = color
      ..style = PaintingStyle.stroke;

    double angle = pi * 2 * (percent / 100);
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = 100;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
        angle, false, circle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
