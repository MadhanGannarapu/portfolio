import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final GlobalKey<State<StatefulWidget>> homeScreenKey;

  CustomAppBar({
    required this.homeScreenKey,
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: () => Scrollable.ensureVisible(homeScreenKey.currentContext!,
              duration: const Duration(seconds: 1)),
          child: const Text(
            "{M}",
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 4,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      actions: [
        TextButton.icon(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.fileLines),
          label: const Text('Resume'),
        )
      ],
    );
  }
}
