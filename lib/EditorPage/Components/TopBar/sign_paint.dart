//绘制标志
import 'package:flutter/material.dart';
import '../../../Config/index.dart';

class SignPlant extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = KColor.primaryColor
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 13/2);
    path.lineTo(10, 1);
    path.lineTo(10, 12);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
