import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

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
            "Here are a few technologies I’ve been working with recently:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Wrap(
            runAlignment: WrapAlignment.spaceBetween,
            children: [
              SkillsWithHeader(
                header: 'Programming Language',
                techStack: SkillsData.programmingLanguage,
              ),
              SkillsWithHeader(
                header: 'Frontend',
                techStack: SkillsData.frontend,
              ),
              SkillsWithHeader(
                header: 'Backend',
                techStack: SkillsData.backend,
              ),
              SkillsWithHeader(
                header: 'Others',
                techStack: SkillsData.others,
              ),
            ],
          )
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
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
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
            )
          ],
        ),
      ),
    );
  }
}
