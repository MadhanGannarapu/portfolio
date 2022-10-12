import 'package:flutter/material.dart';

import 'colors.dart';

class AppDecoration {
  static BoxDecoration card = const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(8)),
    boxShadow: [
      BoxShadow(
        color:  AppColors.aliceBlue,
        spreadRadius: 2,
        // blurRadius: 2,
      ),
    ],
  );
}
