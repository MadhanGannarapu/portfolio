import 'package:flutter/material.dart';
import 'package:portfolio/constants/theme.dart';
import 'package:portfolio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'view/screens/main_screen.dart';
import 'view/widgets/custom_cursor_widget.dart';

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

// import 'package:flutter/material.dart';

// final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

// void main() {
//   runApp(
//     MaterialApp(
//       theme: ThemeData(scaffoldBackgroundColor: darkBlue),
//       home: MyWidget(),
//     ),
//   );
// }

// class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   Offset pointer = Offset.zero;

//   @override
//   Widget build(BuildContext context) {
//     print("object");
//     return Scaffold(
//       body: MouseRegion(
//           // cursor: SystemMouseCursors.none,
//           onHover: (eve) {
//             setState(() {
//               pointer = eve.position;
//             });
//           },
//           child: Stack(
//             children: [
//               AnimatedPositioned(
//                 duration: const Duration(milliseconds: 500),
//                 left: pointer.dx - 20,
//                 top: pointer.dy - 20,
//                 child: Container(
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(Radius.circular(100)),
//                     border: Border.all(
//                       width: 4,
//                       color: Colors.white,
//                       style: BorderStyle.solid,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }
