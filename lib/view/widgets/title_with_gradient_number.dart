import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'gradient_number.dart';

class TitleWithGradientNumber extends StatelessWidget {
  const TitleWithGradientNumber(
      {Key? key, required this.number, required this.title})
      : super(key: key);
  final String number, title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      // width: 300,
      child: Stack(children: [
        GradientText(
          number,
          style: const TextStyle(fontSize: 150, fontWeight: FontWeight.w900),
        ),
        Container(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: AppColors.maastrichtBlue,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
