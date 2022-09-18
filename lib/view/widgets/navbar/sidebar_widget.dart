import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.01, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 20),
          Text(
            "<MG/>",
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 4,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          SidebarItemWidget(label: 'About'),
          SidebarItemWidget(label: 'Experience'),
          SidebarItemWidget(label: 'Work'),
          SidebarItemWidget(label: 'Contact'),
          SidebarItemWidget(label: 'Resume'),
          Spacer(),
        ],
      ),
    );
  }
}

class SidebarItemWidget extends StatelessWidget {
  const SidebarItemWidget({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: TextButton(
        onPressed: () {},
        child: Text(label),
      ),
    );
  }
}
