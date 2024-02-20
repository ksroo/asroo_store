import 'package:flutter/material.dart';

class DetailsCustomPainter extends CustomPainter {
  DetailsCustomPainter({required this.gradient});
  final LinearGradient gradient;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromPoints(Offset.zero, Offset(0, size.height)),
      );

    final path = Path();
    _pathChoeses(path, size);

    canvas.drawPath(path, paint);
  }

  void _pathChoeses(Path path, Size size) {
    path
      ..moveTo(size.width * 1.0001067, size.height * 0.0032389)
      ..lineTo(size.width * 0.1816000, size.height * 0.9980542)
      ..lineTo(size.width * 0.9805600, size.height * 0.9996429)
      ..lineTo(size.width * 1.0080000, size.height * 0.4926108)
      ..lineTo(size.width * 1.0001067, size.height * 0.0032389)
      ..close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
