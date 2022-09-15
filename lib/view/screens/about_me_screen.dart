import 'package:flutter/material.dart';
import '../../constants/text_styles.dart';
import '../widgets/title_with_gradient_number.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleWithGradientNumber(number: '1', title: 'About me'),
        Text(
            "A self-taught Programmer, functioning in the industry for 3+ years now. I make meaningful and delightful digital products that create an equilibrium between user needs and business goals.",
            style: AppTextStyles.normal),
        SizedBox(height: 200)
      ],
    );
  }
}
