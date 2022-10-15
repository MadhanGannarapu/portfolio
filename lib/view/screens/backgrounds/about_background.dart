import 'package:flutter/material.dart';

import '../../widgets/circles.dart';

class AboutViewBackground extends StatelessWidget {
  const AboutViewBackground({super.key});

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
          OutlinedCircle(
              alignment: Alignment.centerRight, size: 200, thickness: 15),
          OutlinedCircle(alignment: Alignment.centerLeft, size: 250),
          OutlinedCircle(alignment: Alignment.center, size: 100, thickness: 5),
          RippleEffectCircle(alignment: Alignment.centerRight, size: 100),
        ],
      ),
    );
  }
}
