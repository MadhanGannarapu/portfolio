import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/view/screens/experience_screen.dart';
import 'package:portfolio/view/screens/responsive/responsive.dart';
import 'package:portfolio/view/screens/work_screen.dart';
import 'package:portfolio/view/widgets/development_flag_widget.dart';

import '../widgets/navbar/appbar.dart';
import '../widgets/navbar/bottom_appbar.dart';
import '../widgets/navbar/sidebar_widget.dart';
import 'about_me_screen.dart';
import 'contact_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: const [
          Responsive(
            mobile: MobileView(),
            tablet: TabletView(),
            desktop: TabletView(),
          ),
          UnderDevelopmentBanner()
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final homeScreenKey = GlobalKey();
    final aboutScreenKey = GlobalKey();
    final experienceScreenKey = GlobalKey();
    final workScreenKey = GlobalKey();
    final contactScreenKey = GlobalKey();
    return Scaffold(
      appBar: CustomAppBar(homeScreenKey: homeScreenKey),
      bottomNavigationBar: BottomAppbarWidget(keys: [
        homeScreenKey,
        aboutScreenKey,
        experienceScreenKey,
        workScreenKey,
        contactScreenKey
      ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                HomeScreen(key: homeScreenKey),
                AboutScreen(key: aboutScreenKey),
                ExperienceScreen(key: experienceScreenKey),
                WorkScreen(key: workScreenKey),
                ContactScreen(key: contactScreenKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final homeScreenKey = GlobalKey();
    final aboutScreenKey = GlobalKey();
    final experienceScreenKey = GlobalKey();
    final workScreenKey = GlobalKey();
    final contactScreenKey = GlobalKey();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(homeScreenKey: homeScreenKey),
      body: Row(
        children: [
          SidebarWidget(
            keys: [
              homeScreenKey,
              aboutScreenKey,
              experienceScreenKey,
              workScreenKey,
              contactScreenKey
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      HomeScreen(key: homeScreenKey),
                      AboutScreen(key: aboutScreenKey),
                      ExperienceScreen(key: experienceScreenKey),
                      WorkScreen(key: workScreenKey),
                      ContactScreen(key: contactScreenKey),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
