import 'package:flutter/material.dart';
import 'package:portfolio/constants/text.dart';
import 'package:portfolio/constants/text_styles.dart';
import 'package:portfolio/view/screens/responsive/responsive.dart';

import '../widgets/title_with_gradient_number.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getInTouchWidget = const Text(
      AppText.getInTouchContent,
      textAlign: TextAlign.center,
      style: AppTextStyles.normal,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWithGradientNumber(
          number: AppText.contactSNO,
          title: AppText.contactHeading,
        ),
        const Text(AppText.getInTouch, style: AppTextStyles.title),
        const SizedBox(height: 10),
        Responsive(
          mobile: Column(
            children: [
              getInTouchWidget,
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text(AppText.sayHello),
              ),
            ],
          ),
          tablet: const ContactDesktopView(),
          desktop: const ContactDesktopView(),
        ),
        const SizedBox(height: 200),
      ],
    );
  }
}

class ContactDesktopView extends StatelessWidget {
  const ContactDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            AppText.getInTouchContent,
            textAlign: TextAlign.center,
            style: AppTextStyles.normal,
          ),
        ),
        Expanded(
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppText.sayHello),
            ),
          ),
        ),
      ],
    );
  }
}
