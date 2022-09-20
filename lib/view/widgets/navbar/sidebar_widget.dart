import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key, required this.keys});
  final List<GlobalKey> keys;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.01, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          InkWell(
            onTap: () => Scrollable.ensureVisible(keys[0].currentContext!,
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
          const Spacer(flex: 10),
          SidebarItemWidget(label: 'About', pageKey: keys[1]),
          const Spacer(flex: 1),
          SidebarItemWidget(label: 'Experience', pageKey: keys[2]),
          const Spacer(flex: 1),
          SidebarItemWidget(label: 'Work', pageKey: keys[3]),
          const Spacer(flex: 1),
          SidebarItemWidget(label: 'Contact', pageKey: keys[4]),
          const Spacer(flex: 1),
          SidebarItemWidget(label: 'Resume', pageKey: keys[4]),
          const Spacer(flex: 10),
        ],
      ),
    );
  }
}

class SidebarItemWidget extends StatelessWidget {
  const SidebarItemWidget(
      {super.key, required this.label, required this.pageKey});
  final String label;
  final GlobalKey pageKey;
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: TextButton(
        onPressed: () => Scrollable.ensureVisible(pageKey.currentContext!,
            duration: const Duration(seconds: 1)),
        child: Text(label),
      ),
    );
  }
}
