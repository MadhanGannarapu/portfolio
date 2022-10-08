import 'package:flutter/material.dart';
import 'package:portfolio/constants/text.dart';

import '../widgets/title_with_gradient_number.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TitleWithGradientNumber(
          number: AppText.workSNO,
          title: AppText.workHeading,
        ),
        Text(AppText.underDevlopment),
        SizedBox(height: 200)
      ],
    );
  }
}
