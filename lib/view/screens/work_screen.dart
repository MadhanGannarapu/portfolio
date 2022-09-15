import 'package:flutter/material.dart';

import '../widgets/title_with_gradient_number.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TitleWithGradientNumber(number: '3', title: 'Some Things I’ve Built'),
        Text("This section is under development"),
        SizedBox(height: 200)
      ],
    );
  }
}
