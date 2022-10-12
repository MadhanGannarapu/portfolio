import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/text.dart';
import 'package:portfolio/view/screens/responsive/responsive.dart';

import '../../constants/languages.dart';
import '../models/language_model.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const Text(
            AppText.skillsTagline,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Responsive(
            mobile: Column(
              children: [
                SkillsWithHeader(
                  header: AppText.programmingLang,
                  techStack: SkillsData.programmingLanguage,
                ),
                SkillsWithHeader(
                  header: AppText.frontend,
                  techStack: SkillsData.frontend,
                ),
                SkillsWithHeader(
                  header: AppText.backend,
                  techStack: SkillsData.backend,
                ),
                SkillsWithHeader(
                  header: AppText.others,
                  techStack: SkillsData.others,
                ),
              ],
            ),
            tablet: const SkillsTableView(),
            desktop: const SkillsTableView()
          ),
          // Wrap(
          //   runAlignment: WrapAlignment.spaceBetween,
          //   children: [
          //     SkillsWithHeader(
          //       header: AppText.programmingLang,
          //       techStack: SkillsData.programmingLanguage,
          //     ),
          //     SkillsWithHeader(
          //       header: AppText.frontend,
          //       techStack: SkillsData.frontend,
          //     ),
          //     SkillsWithHeader(
          //       header: AppText.backend,
          //       techStack: SkillsData.backend,
          //     ),
          //     SkillsWithHeader(
          //       header: AppText.others,
          //       techStack: SkillsData.others,
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}

class SkillsWithHeader extends StatelessWidget {
  const SkillsWithHeader(
      {super.key, required this.header, required this.techStack});
  final String header;
  final List<LanguageModel> techStack;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWithLine(title: header),
          const SizedBox(height: 20),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: techStack
                .map(
                  (e) => Chip(
                    backgroundColor: AppColors.aliceBlue,
                    label: Text(e.language),
                    avatar: Image.asset(
                      e.imagePath,
                      height: 20,
                      width: 20,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class TitleWithLine extends StatelessWidget {
  const TitleWithLine({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 10),
          width: 50,
          child: const Divider(
            thickness: 2,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        )
      ],
    );
  }
}

class SkillsTableView extends StatelessWidget {
  const SkillsTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SkillsWithHeader(
                header: AppText.programmingLang,
                techStack: SkillsData.programmingLanguage,
              ),
            ),
            Expanded(
              child: SkillsWithHeader(
                header: AppText.frontend,
                techStack: SkillsData.frontend,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SkillsWithHeader(
                header: AppText.backend,
                techStack: SkillsData.backend,
              ),
            ),
            Expanded(
              child: SkillsWithHeader(
                header: AppText.others,
                techStack: SkillsData.others,
              ),
            ),
          ],
        )
      ],
    );
  }
}
