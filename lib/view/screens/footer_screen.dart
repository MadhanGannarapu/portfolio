import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/decorations.dart';
import 'package:portfolio/constants/text.dart';
import 'package:portfolio/utils/url_launcher_util.dart';
import 'package:portfolio/view/screens/responsive/responsive.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry padding = const EdgeInsets.all(20);
    EdgeInsetsGeometry margin =
        const EdgeInsets.symmetric(vertical: 20, horizontal: 4);
    return Responsive(
      mobile: Container(
        margin: margin,
        padding: padding,
        decoration: AppDecoration.card,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SocaialNetworksWidget(),
            SizedBox(height: 10),
            LocationPinWidget(),
            SizedBox(height: 10),
            PoweredByWidget(),
          ],
        ),
      ),
      tablet: Container(
        margin: margin,
        padding: padding,
        decoration: AppDecoration.card,
        child: Row(
          children: const [
            LocationPinWidget(),
            Spacer(),
            PoweredByWidget(),
            Spacer(),
            SocaialNetworksWidget(),
          ],
        ),
      ),
      desktop: Container(
        margin: margin,
        padding: padding,
        // color: Colors.white,
        decoration: AppDecoration.card,
        child: Row(
          children: const [
            LocationPinWidget(),
            Spacer(),
            PoweredByWidget(),
            Spacer(),
            SocaialNetworksWidget(),
          ],
        ),
      ),
    );
  }
}

class LocationPinWidget extends StatelessWidget {
  const LocationPinWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.location_on_outlined,
      ),
      label: const Text("Hyderabad, India"),
    );
  }
}

class PoweredByWidget extends StatelessWidget {
  const PoweredByWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Designed & Developed by me :)');
  }
}

class SocaialNetworksWidget extends StatelessWidget {
  const SocaialNetworksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            UrlLauncherUtils.openLink(url: AppUrl.github);
          },
          icon: const FaIcon(FontAwesomeIcons.github),
        ),
        IconButton(
          onPressed: () {
            UrlLauncherUtils.openLink(url: AppUrl.instagram);
          },
          icon: const FaIcon(FontAwesomeIcons.instagram),
        ),
        IconButton(
          onPressed: () {
            UrlLauncherUtils.openLink(url: AppUrl.linkedIn);
          },
          icon: const FaIcon(FontAwesomeIcons.linkedinIn),
        ),
        IconButton(
          onPressed: () {
            UrlLauncherUtils.openLink(url: AppUrl.medium);
          },
          icon: const FaIcon(FontAwesomeIcons.medium),
        ),
        IconButton(
          onPressed: () {
            UrlLauncherUtils().openEmail();
          },
          icon: const FaIcon(FontAwesomeIcons.envelope),
        )
      ],
    );
  }
}
