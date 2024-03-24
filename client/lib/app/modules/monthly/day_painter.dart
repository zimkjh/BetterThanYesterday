import 'dart:math';
import 'package:flutter/material.dart';

class DayPainter extends CustomPainter {
  final List<Color> colors;

  const DayPainter(this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final paint = Paint();

    for (int i = 0; i < colors.length; i++) {
      final path = Path();
      path.moveTo(size.width / 2, size.height / 2);
      path.arcTo(
        rect,
        i * 2 * pi / colors.length,
        2 * pi / colors.length,
        false,
      );
      path.close();
      paint.color = colors[i];

      canvas.drawPath(path, paint);

      final blurPaint = Paint()
        ..color = paint.color
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2.0);
      canvas.drawPath(path, blurPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
