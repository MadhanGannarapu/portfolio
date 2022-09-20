import 'package:flutter/material.dart';
import 'package:portfolio/constants/text.dart';
import 'package:portfolio/constants/text_styles.dart';
import 'package:portfolio/view/screens/responsive/responsive.dart';

import '../widgets/title_with_gradient_number.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWithGradientNumber(number: '4', title: 'What’s Next?'),
        const Text(AppText.getInTouchHeading, style: AppTextStyles.title),
        const SizedBox(height: 10),
        Responsive(
            mobile: Column(
              children: [
                const Text(AppText.getInTouch,
                    textAlign: TextAlign.center, style: AppTextStyles.normal),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Say Hello'),
                ),
              ],
            ),
            tablet: Row(
              children: [
                const Expanded(
                  child: Text(AppText.getInTouch,
                      textAlign: TextAlign.center, style: AppTextStyles.normal),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Say Hello'),
                ),
              ],
            ),
            desktop: Row(
              children: [
                const Expanded(
                  child: Text(AppText.getInTouch,
                      textAlign: TextAlign.center, style: AppTextStyles.normal),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Say Hello'),
                ),
              ],
            )),
        const SizedBox(height: 200),
      ],
    );
  }
}
