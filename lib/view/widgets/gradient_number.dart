import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    Key? key,
    this.style,
  }) : super(key: key);

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    Gradient gradient = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.blueGrey.shade300,
          const Color(0x2AE3F2FD),
        ]);
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style ??
            const TextStyle(fontSize: 200, fontWeight: FontWeight.w900),
      ),
    );
  }
}
//  Colors.blueGrey.shade300,
//           Color.fromARGB(74, 227, 242, 253),