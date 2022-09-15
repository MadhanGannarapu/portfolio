import 'package:flutter/material.dart';
import 'package:portfolio/constants/text_styles.dart';

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
        const Text('Get In Touch', style: AppTextStyles.title),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: const Text(
                  'Although I’m not currently looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I’ll try my best to get back to you!',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.normal),
            ),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('Say Hello')),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 200),
      ],
    );
  }
}
