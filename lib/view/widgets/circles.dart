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

class OutlinedCircle extends StatelessWidget {
  const OutlinedCircle(
      {super.key,
      this.size,
      this.color,
      required this.alignment,
      this.thickness});
  final double? size;
  final Color? color;
  final Alignment alignment;
  final double? thickness;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        height: size ?? 400,
        width: size ?? 400,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: color ?? const Color(0xFFE6E6E6).withOpacity(0.3),
            width: thickness ?? 10,
          ),
        ),
      ),
    );
  }
}

class RippleEffectCircle extends StatelessWidget {
  const RippleEffectCircle(
      {super.key,
      this.size,
      this.color,
      required this.alignment,
      this.thickness});
  final double? size;
  final Color? color;
  final Alignment alignment;
  final double? thickness;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.all(80),
        height: size ?? 50,
        width: size ?? 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: const Color(0xFFE6E6E6).withOpacity(0.3)),
            BoxShadow(
                color: const Color(0xFFE6E6E6).withOpacity(0.2),
                spreadRadius: 40),
            BoxShadow(
                color: const Color(0xFFE6E6E6).withOpacity(0.1),
                spreadRadius: 80),
          ],
        ),
      ),
    );
  }
}
