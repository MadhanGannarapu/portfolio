import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/text.dart';

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
          // const Icon(Icons.web),
          // const FaIcon(FontAwesomeIcons.mo),
          Wrap(
            runAlignment: WrapAlignment.spaceBetween,
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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(color: AppColors.aliceBlue, blurRadius: 2),
              ],
            ),
            child: Wrap(
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
          )
        ],
      ),
    );
  }
}
