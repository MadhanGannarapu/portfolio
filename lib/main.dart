import 'package:flutter/material.dart';
import 'package:portfolio/constants/theme.dart';
import 'package:portfolio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'view/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(builder: (context, theme, _) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          // themeMode: theme.themeMode,
          themeMode: ThemeMode.light,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          home: const MainScreen(),
        );
      }),
    );
  }
}
