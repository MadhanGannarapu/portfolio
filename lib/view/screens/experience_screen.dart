import 'package:flutter/material.dart';
import 'package:portfolio/constants/text.dart';

import '../widgets/title_with_gradient_number.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TitleWithGradientNumber(
          number: AppText.experienceSNO,
          title: AppText.experienceHeading,
        ),
        Text(AppText.underDevlopment),
        SizedBox(height: 200)
      ],
    );
  }
}
