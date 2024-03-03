import 'package:flutter/material.dart';
import 'package:uni_tool/core/common/app_colors.dart';

class BackgroundShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = AppColors.mainColor;
    canvas.drawCircle(
      Offset(
        size.width * 0.25,
        0,
      ),
      size.width / 4.2,
      paint,
    );
    canvas.drawCircle(
      Offset(
        0,
        size.width * 0.25,
      ),
      size.width / 4.2,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
