import 'package:flutter/material.dart';

import '../widgets/title_with_gradient_number.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TitleWithGradientNumber(number: '2', title: 'Where I’ve Worked'),
        Text("This section is under development"),
                SizedBox(height: 200)

      ],
    );
  }
}
