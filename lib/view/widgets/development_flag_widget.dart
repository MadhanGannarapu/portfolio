import 'package:flutter/material.dart';

class UnderDevelopmentBanner extends StatelessWidget {
  const UnderDevelopmentBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -50,
      top: 60,
      child: RotationTransition(
        turns: const AlwaysStoppedAnimation(45 / 360),
        child: Material(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal:60),
            color: Colors.teal,
            child: const Text(
              'Under development',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
