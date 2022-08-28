import 'package:flutter/material.dart';

class SectionHeaderWidget extends StatelessWidget {
  const SectionHeaderWidget({Key? key, this.header, this.label, this.caption})
      : super(key: key);
  final String? header, label, caption;
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              child: Divider(thickness: 2),
            ),
            const SizedBox(width: 20),
            Text(
              label ?? '',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Text(
          header ?? '',
          style: const TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
        ),
        Text(
          caption ?? '',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
