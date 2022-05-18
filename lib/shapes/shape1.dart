import 'package:flutter/material.dart';

class ShapeOne extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.2525000, size.height * 0.1060000);
    path0.quadraticBezierTo(size.width * 0.50, size.height * 0.1043200,
        size.width * 0.3787500, size.height * 0.3080000);
    path0.cubicTo(
        size.width * 0.3662750,
        size.height * 0.5575400,
        size.width * 0.4009875,
        size.height * 0.5216000,
        size.width * 0.50,
        size.height * 0.5780000);
    path0.cubicTo(
        size.width * 0.5105250,
        size.height * 0.6270600,
        size.width * 0.4923125,
        size.height * 0.1,
        size.width * 1.1,
        size.height * 0.99);
    path0.quadraticBezierTo(size.width * 0.4950688, size.height * 0.8410000,
        size.width * 1.4952750, size.height * 1.9880000);
    path0.quadraticBezierTo(size.width * 0.3956938, size.height * 1.9910000,
        size.width * 0.3625000, size.height * 1.50);
    path0.cubicTo(
        size.width * 0.3696375,
        size.height * 0.9006000,
        size.width * 0.3343000,
        size.height * 0.8998400,
        size.width * 0.3022375,
        size.height * 0.8395200);
    path0.cubicTo(
        size.width * 0.2830875,
        size.height * 0.8006200,
        size.width * 0.2878000,
        size.height * 0.7317000,
        size.width * 0.3075000,
        size.height * 0.6040000);
    path0.quadraticBezierTo(size.width * 0.3228875, size.height * 0.4768000,
        size.width * 0.2525000, size.height * 0.4060000);
    path0.lineTo(size.width * 0.2525000, size.height * 0.1060000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
