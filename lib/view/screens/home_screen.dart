import 'package:flutter/material.dart';

import '../widgets/change_theme_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
      //   },
      //   icon: const Icon(Icons.light),
      //   label: const Text("Switch Theme"),
      // ),
      floatingActionButton: const ChangeThemeButtonWidget(),
      body: Container(),
    );
  }
}
