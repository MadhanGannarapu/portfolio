import 'package:flutter/material.dart';
import 'package:portfolio/constants/text.dart';

import '../../constants/text_styles.dart';
import '../widgets/skills_widget.dart';
import '../widgets/title_with_gradient_number.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleWithGradientNumber(
          number: AppText.aboutMeSNO,
          title: AppText.aboutMeHeading,
        ),
        Text(AppText.aboutMeSubText, style: AppTextStyles.normal),
        SkillsWidget(),
        SizedBox(height: 200),
      ],
    );
  }
}
