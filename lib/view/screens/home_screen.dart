import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, my name is',
            style: AppTextStyles.caption,
          ),
          const SizedBox(height: 10),
          const AutoSizeText(
            'Madhan Gannarapu',
            maxLines: 1,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
          const AutoSizeText(
            'I build things for the Web and Mobile',
            maxLines: 1,
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.w900, color: Colors.grey),
          ),
          const SizedBox(height: 25),
          const AutoSizeText(
            'I’m a software developer specializing in building (and occasionally backend) exceptional digital experiences. Currently, I’m focused on building accessible, human-centered products at AutomateSMB',
            // maxLines: 6,
            minFontSize: 12,
            maxFontSize: 16,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}


// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: const ChangeThemeButtonWidget(),
//       body: SingleChildScrollView(
//         child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             // Icon(Icons.g)
//             SectionHeaderWidget(
//               label: 'Madhan Gannarapu',
//               header: 'Hi, I\'m Madhan, your friendly neighborhood developer',
//             ),
//             SectionHeaderWidget(
//               label: 'About me',
//               header:
//                   "I'm a developer living in India, building Android, iOS and web with Flutter",
//             ),
//             SectionHeaderWidget(
//               label: 'What I do',
//               header: "I love creating beautiful user experiences",
//               caption:
//                   'Most of my development experience and interest is in React front end development. More recently I have also been using Solidity to write smart contracts on Ethereum',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
