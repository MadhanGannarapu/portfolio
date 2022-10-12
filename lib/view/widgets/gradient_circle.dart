
import 'package:flutter/material.dart';

class GradientCircle extends StatelessWidget {
  const GradientCircle(
      {super.key,
      this.size,
      this.colors,
      this.begin,
      this.end,
      required this.alignment});
  final double? size;
  final List<Color>? colors;
  final AlignmentGeometry? begin, end;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        height: size ?? 400,
        width: size ?? 400,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: begin ?? Alignment.topLeft,
            end: end ?? Alignment.bottomRight,
            colors: colors ??
                [
                  const Color(0x0FFFFFFF),
                  const Color(0xFFE6E6E6),
                ],
          ),
        ),
      ),
    );
  }
}
