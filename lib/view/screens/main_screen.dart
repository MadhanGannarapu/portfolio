import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/text_styles.dart';
import 'package:portfolio/view/widgets/development_flag_widget.dart';

import 'contact_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'MG',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: [
              TextButton(onPressed: () {}, child: const Text('About')),
              TextButton(onPressed: () {}, child: const Text('Experience')),
              TextButton(onPressed: () {}, child: const Text('Work')),
              TextButton(onPressed: () {}, child: const Text('Contact')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Resume')),
              )
            ],
          ),
          body: Row(
            children: [
              SizedBox(
                width: size.width * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const FaIcon(FontAwesomeIcons.github),
                    SizedBox(height: size.height * 0.02),
                    const FaIcon(FontAwesomeIcons.linkedin),
                    SizedBox(height: size.height * 0.02),
                    const FaIcon(FontAwesomeIcons.instagram),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      height: size.height * 0.1,
                      child: const VerticalDivider(),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      HomeScreen(),
                      ContactScreen(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'madhan.gannarapu410@gmail.com',
                        style: AppTextStyles.caption,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      height: size.height * 0.1,
                      child: const VerticalDivider(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      const UnderDevelopmentBanner()
      ],
    );
  }
}
