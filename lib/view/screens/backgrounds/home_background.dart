import 'package:flutter/material.dart';

import '../../widgets/circles.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          GradientCircle(size: 50, alignment: Alignment.center),
          GradientCircle(size: 150, alignment: Alignment.centerRight),
          GradientCircle(alignment: Alignment.centerLeft),
          GradientCircle(size: 100, alignment: Alignment.center),
          GradientCircle(size: 50, alignment: Alignment.centerRight),
        ],
      ),
    );
  }
}
