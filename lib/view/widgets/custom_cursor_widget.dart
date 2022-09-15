import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:provider/provider.dart';

import '../../provider/custom_cursor_provider.dart';

class CustomCursorWidget extends StatelessWidget {
  const CustomCursorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CursorProvider>(
      builder: (context, provider, _) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          left: provider.pointer.dx - 20,
          top: provider.pointer.dy - 20,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(
                width: 4,
                color: AppColors.maastrichtBlue,
                style: BorderStyle.solid,
              ),
            ),
          ),
        );
      },
    );
  }
}
